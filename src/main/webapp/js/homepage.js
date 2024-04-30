
    // 鼠标滚轮滚动事件
    window.addEventListener("scroll", () => {
    let header = document.querySelector("header");
    header.classList.toggle("sticky", window.scrollY > 0);
})
