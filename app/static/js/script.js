// Message Fade Out
const mc = document.getElementById("message-container");

setTimeout(function() {
    mc.classList.add("fade-out");
    mc.addEventListener("transitionend", function() {
        mc.remove();
    });
}, 10000);
