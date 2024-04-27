// HEADER FIXED
$(window).scroll(function() {
  var sticky = $('header'),
    scroll = $(window).scrollTop();

  if (scroll >= 60) sticky.addClass('fixed');
  else sticky.removeClass('fixed');
});

// SEARCH
$(".header-search_icon").click(function () {
    $(".header-search form").fadeIn(200);
});

$(".header-search_close").click(function () {
    $(".header-search form").fadeOut(200);
});

$(".header-search_icon").click(function (e) {
    $(".header-search form input").trigger("click").focus();
});

// HEADER USER
$('.header-user, .user-login_close').on('click', function(){
	$('.user_menu, .user-login').toggleClass('active');
});

$(document).on("click", function (e) {
    if (!$(e.target).closest(".header-user").length) {
        $(".user_menu").removeClass("active");
    }
    e.stopPropagation();
});

// MOBILE MENU
$('.mobmenu-btn').on('click', function(){
	$('.mobmenu').toggleClass('active');
	$('.mobmenu-btn').toggleClass('active');
});

// SWIPER SLIDER

var swiper = new Swiper(".ovvo-slider", {
    slidesPerView: 1,
    spaceBetween: 20,
    loop: true,
    navigation: {
        nextEl: ".ovvo-slider .fa-chevron-right",
        prevEl: ".ovvo-slider .fa-chevron-left",
    }
});

// RATING COLOR

$(".rating-color, .rating-color1").each(function () {
    var tr = $(this),
        trc = parseInt(tr.text(), 10);
    if (trc < 4) {
        tr.addClass("low");
    } else if (trc < 7) {
        tr.addClass("middle");
    }
});

// FULL BG 

$('.glovofull-bg_over .e-btn').on('click', function(){
	$('.glovofull-bg [data-vbg]').toggleClass('active');
});

// FULL TEXT

$('.expand-text').each(function() {
    var a = $(this), b = parseFloat(a.css('line-height')), c = a.data('rows'), d = a.outerHeight(), h = b*c;
    if ( d > h ) {
        a.attr('style', '-webkit-line-clamp: '+c+'').after('<a class="expand-btn">Развернуть текст</a>');
    };
});

$(document).on('click', '.expand-btn', function() {
    $(this).prev().removeClass('line-clamp').removeAttr('style'); 
    $(this).remove();
});

// TRAIlER MODAL

$('.trailer-btn, .trailer-modal_close').on('click', function(){
	$('.trailer-modal').toggleClass('active');
});

// AJAX FAV

$(document).on("click", ".favmod", function (e) {
    e.preventDefault();
    var $this = $(this);
    ShowLoading();
    $.ajax({
        url: dle_root + "engine/mods/favorites/ajax.php",
        type: "POST",
        dataType: "json",
        data: { newsid: $this.data("id") },
    })
        .done(function () {
            $this.toggleClass("active");
        })
        .fail(function (error) {
            DLEalert(error.responseText, dle_info);
        })
        .always(function () {
            HideLoading();
        });
});