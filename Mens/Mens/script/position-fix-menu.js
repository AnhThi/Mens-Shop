$(window).scroll(function () {
    if ($(this).scrollTop() > 75)
    {
        $('#header').addClass('position-fixed-menu');
    }
    else
    {
        $('#header').removeClass('position-fixed-menu');
    }
});