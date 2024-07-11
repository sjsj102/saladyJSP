
window.onload = () => {

  // Header inner in all menu area
  $('.category_btn').on('click', function(){
    $(".all_menu_area, header").toggleClass("view");
    // var classVar = $('header').hasClass('view');
    // if(classVar){

    //   $('.category_btn img').attr('src','./images/close_btn.png');

    // } else {

    //   $('.category_btn img').attr('src','./images/category_icon.png');
    // }
  });


  // document reload
  var dwidth = jQuery(window).width();
  jQuery(window).bind('resize', function(e){

    var wwidth = jQuery(window).width();

    if(dwidth!==wwidth){
      dwidth = jQuery(window).width();

      if (window.RT) clearTimeout(window.RT);

      window.RT = setTimeout(function(){
        this.location.reload(false); /* false to get page from cache */
      }, 10);
    }
  });




  // horizontal SCROLL SWIPER SLIDE

  var scrollSwiper = new Swiper(".scroll_crop", {
    // autoplay: {
    //   delay: 3000,
    //   disableOnInteraction: false,
    // },
    // loop: true,
    slidesPerView: "auto",
    spaceBetween: 24,
    // autoplay : {
    //   delay: 4000,
    //   disableOnInteraction: false,
    // },
    pagination: {
      el: ".swiper-pagination",
      type: "progressbar",
    },
    breakPoints : {
      768 : {
        spaceBetween: 40,

      }
    }
  });

  // main txt slide
  var mainTxtSwiper = new Swiper("#main_txt", {
    effect: "fade",
    spaceBetween: 30,
    fadeEffect: {
      crossFade: true , // 슬라이드가 겹치는 느낌 문제 해결
    },
    loop: true,
    // slidesPerView: 'auto',
    // direction: "vertical",
    autoplay : {
      delay: 6000,
      disableOnInteraction: false,
    },
    noSwiping: true, // 드래그 이벤트 비활성화
    noSwipingClass: 'swiper-no-swiping' // 드래그 이벤트를 비활성화할 요소에 적용될 클래스
  });

  // CATE TAB CONTENTS
  $('.tab_btn > li').on('click', function(){
    var tab_id = $(this).attr('data-tab');

    $('.tab_contents').hide();
    $('#'+tab_id).show();
    $('.tab_btn > li').removeClass('active');
    $(this).addClass('active');
  });

  // tab swiper slide
  var tabSwiper = new Swiper(".tab_contents", {
    slidesPerView: 'auto',
    spaceBetween: 24,
    observer: true,
    observeParents: true,
    pagination: {
      el: ".swiper-pagination",
      type: "progressbar",
    },
    breakPointes : {
      768 : {
        spaceBetween: 40,
      }
    }
  });

  // video swiper slide
  var videoSwiper = new Swiper("#video_swiper_slide", {
    slidesPerView: 'auto',
    spaceBetween: 24,
    centeredSlides : true,
    loop: true,
    loopedSlides: 2,
    breakPointes: {
      768: {
        spaceBetween: 40,
      }
    },
    on: {
      slideChange: function() {
        // 이전 슬라이드에서 비디오 일시 정지
        var previousSlide = this.slides[this.previousIndex];
        var previousVideo = previousSlide.querySelector('.on_video');
        if (previousVideo && !previousVideo.paused) {
          previousVideo.pause();
        }

        // 현재 슬라이드에서 비디오 일시 정지
        var currentSlide = this.slides[this.activeIndex];
        var currentVideo = currentSlide.querySelector('.on_video');
        if (currentVideo && !currentVideo.paused) {
          currentVideo.pause();
        }
      }
    }

  });

  // video plat button
  $('.play_btn').click(function(){
    var video = $(this).siblings('.on_video');
    // video.attr('src', './images/video/video_01.mp4');
    video.get(0).play();
    // video.attr('controls','true');
    $(this).hide();
    $(this).siblings('.stop_btn').show();
    $('.swiper-slide-active').addClass('area_hidden');
    // video slide stop btn
    var parentElement = $(" #video_swiper_slide .swiper-slide");
    var myElement = $(".stop_btn");
    var timer; // 타이머를 저장할 변수

    parentElement.mouseover(function() {
      clearTimeout(timer); // 이전 타이머를 초기화

      myElement.css("opacity", "1");

      // 5초 뒤에 특정 요소를 다시 사라지게 함
      timer = setTimeout(function() {
        myElement.css("opacity", "0");
      }, 1500);
    });

    parentElement.mouseout(function() {
      clearTimeout(timer); // 타이머를 초기화하여 사라지는 동작을 취소
      myElement.css("opacity", "0");
    });

  });
  $('.stop_btn').click(function(){
    var video = $(this).siblings('.on_video');
    // video.attr('src', './images/video/video_01.mp4');
    // video.removeAttr('controls');
    video.get(0).pause();
    $(this).hide();
    $(this).siblings('.play_btn').show();
    $('.swiper-slide-active').removeClass('area_hidden');
  });

  $('.on_video').on('pause', function() {
    $(this).siblings('.play_btn').show();
    $(this).siblings('.stop_btn').hide();
  });


  // max-widtn: 768px mobile
  if(matchMedia("screen and (max-width:768px)").matches){
    $('.conts_desc h5 br').remove();
    $('.banner_txt img').attr('src','./images/banner_img_m.png');
  } ;
  // scroll plugin code
  $('#ai_menu_list').scrollToGiveClass({
    baseline: 'middle',
    add: 250,
  });

  $('#suggest_list').scrollToGiveClass({
    baseline: 'middle',
    add: 250,
  });
  $('#celebrity_area').scrollToGiveClass({
    baseline: 'middle',
    add: 250,
  });
  $('#cate_best').scrollToGiveClass({
    baseline: 'middle',
    add: 250,
  });
  $('#video_area').scrollToGiveClass({
    baseline: 'middle',
    add: 250,
  });
  // notice swiper
  var noticeSwiper = new Swiper("#notice_swiper", {
    loop: true,
    direction: "vertical",
    autoplay: {
      delay: 5000,
      disableOnInteraction: false,
    },
    navigation: {
      nextEl: ".next",
      prevEl: ".prev",
    },
  });


  // swiper.init();


};






