const searchInput = document.getElementById("search");
const suggestionsContainer = document.getElementById(
    "autocomplete-suggestions"
);
let timeout = null;

// Biến để theo dõi gợi ý đang được chọn (dùng cho điều hướng bằng phím)
let currentSuggestionIndex = -1;

searchInput.addEventListener("input", function () {
    const query = this.value.trim();

    if (timeout) {
        clearTimeout(timeout);
    }

    if (query.length > 0) {
        timeout = setTimeout(() => {
            fetch(
                `../Controllers/VocaController.php?action=suggest_vocabs&q=${encodeURIComponent(
                    query
                )}`
            )
                .then((response) => {
                    if (!response.ok) {
                        throw new Error(
                            `HTTP error! status: ${response.status}`
                        );
                    }
                    return response.json();
                })
                .then((suggestions) => {
                    suggestionsContainer.innerHTML = "";
                    currentSuggestionIndex = -1;

                    if (suggestions.length > 0) {
                        suggestions.forEach((item, index) => {
                            const div = document.createElement("div");
                            div.classList.add("suggestion-item"); // Thêm class để dễ dàng CSS
                            div.setAttribute("data-voca", item.voca);

                            let displayHtml = `<strong>${item.voca}</strong>`;
                            if (item.trans) {
                                displayHtml += `<span class="suggestion-trans">${item.trans}</span>`;
                            }
                            div.innerHTML = displayHtml;

                            div.addEventListener("click", () => {
                                searchInput.value = item.voca; // Điền từ vựng vào ô input
                                suggestionsContainer.style.display = "none"; // Ẩn gợi ý
                                searchInput.closest("form").submit(); // Tự động submit form
                            });
                            suggestionsContainer.appendChild(div);
                        });
                        suggestionsContainer.style.display = "block"; // Hiển thị container gợi ý
                    } else {
                        suggestionsContainer.style.display = "none";
                    }
                })
                .catch((error) =>
                    console.error("Error fetching suggestions:", error)
                );
        }, 300);
    } else {
        suggestionsContainer.style.display = "none";
    }
});

searchInput.addEventListener("keydown", function (event) {
    const items = suggestionsContainer.querySelectorAll(".suggestion-item");
    if (items.length === 0) return;

    if (event.key === "ArrowDown") {
        event.preventDefault(); 
        if (currentSuggestionIndex < items.length - 1) {
            if (currentSuggestionIndex !== -1) {
                items[currentSuggestionIndex].classList.remove("active");
            }
            currentSuggestionIndex++;
            items[currentSuggestionIndex].classList.add("active");
            searchInput.value =
                items[currentSuggestionIndex].getAttribute("data-voca");
        }
    } else if (event.key === "ArrowUp") {
        event.preventDefault(); // Ngăn cuộn trang
        if (currentSuggestionIndex > 0) {
            items[currentSuggestionIndex].classList.remove("active");
            currentSuggestionIndex--;
            items[currentSuggestionIndex].classList.add("active");
            searchInput.value =
                items[currentSuggestionIndex].getAttribute("data-voca");
        } else if (currentSuggestionIndex === 0) {
            items[currentSuggestionIndex].classList.remove("active");
            currentSuggestionIndex = -1;
            searchInput.value = this.value;
        }
    } else if (event.key === "Enter") {
        event.preventDefault();
        if (currentSuggestionIndex !== -1) {
            items[currentSuggestionIndex].click();
        } else {
            searchInput.closest("form").submit();
        }
    }
});

// Ẩn gợi ý khi click ra ngoài
document.addEventListener("click", function (event) {
    if (
        !searchInput.contains(event.target) &&
        !suggestionsContainer.contains(event.target)
    ) {
        suggestionsContainer.style.display = "none";
        currentSuggestionIndex = -1; // Reset index khi ẩn
        const activeItem = suggestionsContainer.querySelector(
            ".suggestion-item.active"
        );
        if (activeItem) {
            activeItem.classList.remove("active");
        }
    }
});

// Khi input focus trở lại thì hiển thị gợi ý nếu có query
searchInput.addEventListener("focus", function () {
    if (
        this.value.trim().length > 0 &&
        suggestionsContainer.children.length > 0
    ) {
        suggestionsContainer.style.display = "block";
    }
});
