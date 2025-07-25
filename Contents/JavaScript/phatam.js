document.addEventListener("DOMContentLoaded", function () {
    const buttons = document.querySelectorAll(".ipa-button");

    buttons.forEach((button) => {
        button.addEventListener("click", function () {
            const ipaSymbol = this.dataset.ipaSymbol;
            const audioPath = this.dataset.ipaSoundPath;

            if (audioPath) {
                const audio = new Audio(audioPath);
                audio.play().catch((error) => {
                    console.error(
                        "Error playing audio for " + ipaSymbol + ":",
                        error
                    );
                    alert(
                        "Không thể phát âm thanh cho " +
                            ipaSymbol +
                            ". Kiểm tra đường dẫn hoặc cài đặt trình duyệt."
                    );
                });
            } else {
                console.warn(
                    "No sound path defined for IPA symbol: " + ipaSymbol
                );
            }
        });
    });
});
