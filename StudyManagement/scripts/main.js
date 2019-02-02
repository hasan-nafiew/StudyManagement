$(document).ready(function () {
    
    /*------------ preloader ------------*/
    // loader beacon

    $(window).on('load', function () {
        $(".preloader").fadeOut("slow", function () {
            $(this).remove();
        });
    });
    /*------------ sticky navbar ------------*/
    $(".header_nav_wrapper").sticky({ topSpacing: 0 });
    /*------------ Start Toggle Search Bar ------------*/
    $(".navbar_search_btn").on("click", function () {
        $(".body_overlay,.search_this,#close_search").addClass("active");
    });
    $("#close_search, .body_overlay").on("click", function () {
        $(".body_overlay,.search_this,#close_search").removeClass("active");
    });
    /*------------ Start Course list slider  ------------ */
    $(".course_items").slick({
        dots: false,
        infinite: true,
        speed: 400,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 3000,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });

    /*---------- teachers list slider  ---------- */
    $(".teachers_slider").slick({
        dots: false,
        infinite: true,
        speed: 400,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 3000,
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 4
                }
            },
            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });

    /*---------- important news slider  ---------- */
    $(".important_news").slick({
        dots: false,
        infinite: true,
        arrows: false,
        autoplay: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        mobileFirst: true,
        vertical: true,
        verticalSwiping: true,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });

    /*---------- latest news item slider  ---------- */
    $(".latest_news_items").slick({
        dots: false,
        infinite: true,
        arrows: false,
        autoplay: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 2
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });
    /*---------- all courses slider  ---------- */
    $(".all_courses_slide").slick({
        dots: false,
        infinite: true,
        arrows: false,
        autoplay: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1199,
                settings: {
                    slidesToShow: 5
                }
            },
            {
                breakpoint: 991,
                settings: {
                    slidesToShow: 4
                }
            },
            {
                breakpoint: 767,
                settings: {
                    slidesToShow: 2
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });

    /* ------- parallax ------- */
    $(".banner_area_parallax").parallax("50%", 0.3);
    $(".funfact_parallax").parallax("50%", 0.3);
    /* ------- funfact ------- */
    jQuery(".fanfact_counter").counterUp({
        delay: 50, time: 4000
    });
    /* ------- magnific popup ------- */
    $('.campus_gallery_grid').magnificPopup({
        delegate: '.gallery_zm',
        type: 'image',
        mainClass: 'mfp-with-zoom mfp-img-mobile',
        gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0, 1]
        },
        zoom: {
            enabled: true,
            duration: 500,
            opener: function (element) {
                return element.find('i');
            }
        },
        image: {
            tError: '<a href-"%url%">The image #%curr%</a> could not be loaded.'
        }
    });

    $('.campus_vdo_play').magnificPopup({
        disableOn: 700,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: true,
        fixedContentPos: false,
        iframe: {
            patterns: {
                youtube: {
                    index: 'youtube.com/',
                    id: 'v=',
                    src: 'http://www.youtube.com/embed/%id%?autoplay=1'
                }
            }
        }
    });
    /* ------- Mesonry ------- */
    $('.campus_gallery_grid').masonry({
        itemSelector: '.gallery_item',
        columnWidth: 285
    });

    /* ------- Scroll to top ------- */
    var scrollTop = $(".scrollToTop");
    $(window).scroll(function () {
        var topPos = $(this).scrollTop();
        if (topPos > 300) {
            $(scrollTop).css("opacity", "1");

        } else {
            $(scrollTop).css("opacity", "0");
        }
    }); 
    $(scrollTop).click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 800);
        return false;

    });
    /*----- wow -----*/
    wow = new WOW(
        {
            boxClass: 'wow', 
            animateClass: 'animated', 
            offset: 230, 
            mobile: true, 
            live: true 
        }
    );
    wow.init();
    /*----- User photo preview -----*/
    function readURL(FileUpload) {
        if (FileUpload.files && FileUpload.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#profile_image').attr('src', e.target.result);
                $("#PhotoUpBtn").addClass("active");
            }

            reader.readAsDataURL(input.files[0]);

        }
    }

    $("#userPhotoUp").change(function () {
        readURL(this);
    });
});
