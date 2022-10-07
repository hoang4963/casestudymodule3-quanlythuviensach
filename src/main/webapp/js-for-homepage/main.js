// for menu

// for infos
var width_current = window.innerWidth;
window.addEventListener("resize", function () {
    if ((width_current < 768 && window.innerWidth > 768) ||
        (width_current > 768 && window.innerWidth < 768)) {
        var DOMs =
            document.querySelectorAll(".intros .row");
        for (var i = 0; i < DOMs.length; i++) {
            if (i % 2 != 0) reverse_child(DOMs[i]);
        }
        width_current = window.innerWidth;
    }
});
window.addEventListener("load", function () {
    if (window.innerWidth > 768) {
        var DOMs =
            document.querySelectorAll(".intros .row");
        for (var i = 0; i < DOMs.length; i++) {
            if (i % 2 != 0) reverse_child(DOMs[i]);
        }
        width_current = window.innerWidth;
    }
});

function reverse_child(element) {
    // var parent = el.parentNode;
    for (var i = 1; i < element.childNodes.length; i++) {
        element.insertBefore(element.childNodes[i], element.firstChild);
    }
}