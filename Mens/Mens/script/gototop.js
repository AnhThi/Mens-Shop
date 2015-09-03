$(window).scroll(function () {
    if ($(this).scrollTop() > 100)
        $("#gototop").fadeIn();
    else
        $("#gototop").fadeOut();
});
$("#gototop").click(function () {
    $("body, html").animate({
        scrollTop: 0
    }, 2000);
});