
// Can also be used with $(document).ready()
$(window).load(function () {
    $('.flexslider').flexslider({
        animation: "slide",
        controlNav: "thumbnails"
    });
});


$(document).ready(function () {
    $(".menu_body").hide();
    //toggle the componenet with class menu_body
    $(".menu_head").click(function () {
        $(this).next(".menu_body").slideToggle(600);
        var plusmin;
        plusmin = $(this).children(".plusminus").text();

        if (plusmin == '+')
            $(this).children(".plusminus").text('-');
        else
            $(this).children(".plusminus").text('+');
    });
});
