const menu = document.querySelector(".menu");
const toggle_menu = document.querySelector(".toggle-menu");
toggle_menu.onclick = function () {
    menu.classList.toggle("hide");
};
