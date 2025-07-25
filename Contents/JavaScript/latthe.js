function openPopup(topicId) {
    document.getElementById("overlay").style.display = "block";
    const allPopups = document.querySelectorAll(".popup");

    allPopups.forEach((popupItem) => {
        popupItem.style.display = "none";
        popupItem.classList.remove("active-item", "flipped");
        popupItem
            .querySelectorAll(".carousel-item .popup-inner")
            .forEach((inner) => {
                inner.classList.remove("flipped");
            });
    });

    const targetPopup = document.getElementById(`popup_${topicId}`);
    if (targetPopup) {
        targetPopup.classList.add("active-item");
        targetPopup.style.display = "block";
    }
}

function closePopup() {
    document.getElementById("overlay").style.display = "none";
    document.querySelectorAll(".popup").forEach((item) => {
        item.classList.remove("active-item");
        item.style.display = "none";
        item.classList.remove("flipped");
        item.querySelectorAll(".carousel-item .popup-inner").forEach(
            (inner) => {
                inner.classList.remove("flipped");
            }
        );
    });
}

function flipRemove() {
    document.querySelectorAll(".popup").forEach((item) => {
        item.classList.remove("flipped");
    });
}

function flipPopup() {
    document.querySelectorAll(".popup").forEach((item) => {
        item.classList.toggle("flipped");
    });
}
