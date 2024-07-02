<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <mytag:meta_tag />
    <title>샐러디, 매일매일 찾아가는 샐러드</title>

    <!-- css -->
    <mytag:css_tag />
    <link rel="stylesheet" href="<c:url value='/resources/css/main_style.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/css/main_style_m.css' />">
    <mytag:js_tag />
    <!-- js -->
    <script src="<c:url value='/resources/js/main_script.js' />"></script>
</head>
<body>
<div class="top_banner">
    <a href="#">지금 회원가입시 2000p 즉시 지급!!</a>
</div>
<!-- header start -->
<mytag:header />
<!-- header end -->
<div class="all_menu_area">
    <ul>
        <li>
            <div>
                <h5>샐러드</h5>
                <ul>
                    <li><a href="#">데일리 샐러드</a></li>
                    <li><a href="#">채소 샐러드</a></li>
                    <li><a href="#">테이스티 샐러드</a></li>
                    <li><a href="#">그린 샐러드</a></li>
                    <li><a href="#">맛보기 키트</a></li>
                </ul>
            </div>

        </li>
        <li>
            <div>
                <h5>식단</h5>
                <ul>
                    <li><a href="#">다이어트 식단</a></li>
                    <li><a href="#">단기 식단</a></li>
                    <li><a href="#">바른 루틴 식단</a></li>
                    <li><a href="#">테이스티 식단</a></li>
                </ul>
            </div>

        </li>
        <li>
            <div>
                <h5>간식</h5>
                <ul>
                    <li><a href="#">곤약</a></li>
                    <li><a href="#">배지푸드</a></li>
                </ul>
            </div>
            <div>
                <h5>음료</h5>
                <ul>
                    <li><a href="#">클렌즈 주스</a></li>

                </ul>
            </div>

        </li>
        <li>
            <h5>프로젝트</h5>
            <ul>
                <li><a href="#">덴마크 프로젝트</a></li>
                <li><a href="#">단백질+헬스 프로젝트</a></li>
                <li><a href="#">바른 루틴 만들기</a></li>
            </ul>
        </li>
    </ul>


</div>
<main>
    <section id="main_banner">
        <video loop autoplay muted>
            <source src="<c:url value='/resources/video/main_video_1.mp4' />" type="video/mp4" >
        </video>

        <div class="main_inner">
            <div id="main_txt" class="swiper mySwiper swiper-no-swiping">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p>EVERYDAY FRESH</p>
                        <h3>
                            다양한 토핑과 드레싱의 조화
                            <br>
                            맛있게 가벼운 한 끼
                        </h3>
                    </div>
                    <div class="swiper-slide">
                        <p>EVENT PROMOTION</p>
                        <h3>
                            누구나 좋아하는
                            <br>
                            아보카도 샐러드 5% 할인
                        </h3>
                    </div>
                </div>

            </div>

            <div class="search_bar">
                <input class="search_area" type="search" placeholder="아보카도 샐러드"
                       onclick="this.placeholder=''"
                       onblur="this.placeholder='아보카도 샐러드'">
                <input type="image" class="search_btn" src="<c:url value='/resources/images/search_btn.png'/>" alt="검색">


            </div>
        </div>
    </section> <!--// #main_banner -->
    <section id="banner_area" class="section">
        <div class="banner_inner">
            <ul>
                <li class="left_banner">
                    <a href="#">
                        <p>가입 후 첫 주문시</p>
                        <h5>
                            베스트 상품 5종 체험 키트
                            <br>
                            무료 증정
                        </h5>
                        <div class="banner_img"></div>
                    </a>
                </li> <!--// .left_banner -->
                <li class="right_banner">
                    <a href="#">
                        <p>23 S/S 시즌맞이 신상품 출시 기념</p>
                        <h5>
                            샐러디 2기 리뷰 체험단
                            <br>
                            선착순 모집
                        </h5>
                        <div class="banner_img"></div>
                    </a>
                </li> <!--// .right_banner -->
            </ul>
        </div>
    </section>
    <section id="ai_menu_list">
        <h3 class="title" >
            <c:choose>
                <c:when test="${empty userName}">
                    <span class="user_name">다이어터</span> 님 😊
                </c:when>
                <c:otherwise>
                    <span class="user_name">${userName}</span> 님 😊
                </c:otherwise>
            </c:choose>
            <br>
            이런 샐러드는 어때요?
        </h3>
        <!-- slide area -->
        <div class="slide_area">
            <div id="ai_slide" class="scroll_crop mySwiper Swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_1.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    제철 채소 베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 2종 (선택 가능) / 제철 과일 2종 (선택 가능) / 병아리콩 / 견과 3종 / 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        8,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_2.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    비타민 가득한 뷰티 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 3종 (선택 가능) / 샐러리 / 새싹 채소 2종 (선택 가능) / 방울토마토 / 제철 과일 3종 (선택 가능) / 병아리콩 / 유자 오리엔탈 드레싱 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        9,500 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_3.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    큐브 치즈 콤보 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 2종 (선택 가능) / 무순 / 방울토마토 / 제철 과일 1종 (선택 가능) / 병아리콩 / 당근 / 적양배추 / 큐브 치즈 2종 (선택 가능) / 유자 드레싱 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        10,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_4.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    건강하고 맛있는 버섯 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 2종 (선택 가능) / 샐러리 / 토마토 / 파프리카 2종 (선택 가능) / 병아리콩 / 양파 / 브로콜리 / 당근 / 양파 / 발사믹 소스 / 버섯 3종 (선택 가능)

                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        8,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_5.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    제철 채소 베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 2종 (선택 가능) / 제철 과일 2종 (선택 가능) / 병아리콩 / 견과 3종 / 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        9,900 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_5.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 / 제철 과일 1종 (선택 가능) / 병아리콩 / 견과 / 드레싱 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        7,500 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">351</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>

                </div>

                <div class="swiper-pagination"></div>



            </div><!--// #ai_slide -->
        </div>



    </section> <!--// #ai_menu_list -->

    <section id="suggest_list">
        <h3 class="title">

            샐러디 최고 인기 상품 👍


            <a href="#">
                상품 더보기 +
            </a>
        </h3>
        <!-- slide area -->
        <div class="slide_area">
            <div id="suggest_slide" class="scroll_crop mySwiper Swiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/sg_thumb_img_1.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    아보카도를 곁들인 테이스티 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 3종 (선택 가능) / 샐러리 / 방울토마토 / 제철 과일 3종 (선택 가능) / 아보카도 / 유자 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        9,900 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">929</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/sg_thumb_img_2.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    치킨 텐더 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 2종 (선택 가능) / 방울토마토 / 허브 솔트 / 병아리콩 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        10,900 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/sg_thumb_img_3.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    모닝 데일리 시리얼 키트
                                </div>
                                <div class="item_desc">
                                    제철 과일 3종 (선택 가능) / 곡물류 3종 (선택 가능) / 아몬드 브리즈 / 건크랜베리 / 그래놀라
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        7,600 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/sg_thumb_img_4.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    베지 푸드 (콩고기) 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 4종 (선택 가능) / 샐러리 / 방울토마토 / 제철 과일 2종 (선택 가능) / 병아리콩 / 그래놀라 / 메추리알 / 건크랜베리 / 무순 / 아즈키 콩 / 콘 샐러드 / 올리브 / 오리엔탈 드레싱 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        11,800 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">3,499</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/sg_thumb_img_5.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    제철 채소 베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 2종 (선택 가능) / 제철 과일 2종 (선택 가능) / 병아리콩 / 견과 3종 / 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        8,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_5.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    제철 채소 베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 2종 (선택 가능) / 제철 과일 2종 (선택 가능) / 병아리콩 / 견과 3종 / 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        8,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_5.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    제철 채소 베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 2종 (선택 가능) / 제철 과일 2종 (선택 가능) / 병아리콩 / 견과 3종 / 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        8,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/ai_thumb_img_5.png'/>" alt="썸네일이미지">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="description">
                                <div class="item_name">
                                    제철 채소 베이직 샐러드
                                </div>
                                <div class="item_desc">
                                    제철 채소 5종 (선택 가능) / 샐러리 / 방울토마토 2종 (선택 가능) / 제철 과일 2종 (선택 가능) / 병아리콩 / 견과 3종 / 오리엔탈 드레싱 / 발사믹 소스 / 드레싱 추가 선택
                                </div>
                                <div class="price_box">
                                    <div class="price">
                                        8,300 <span>원</span>
                                    </div>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div>

                            </div>

                        </a>
                    </div>

                </div>

                <div class="swiper-pagination"></div>



            </div><!--// #ai_slide -->
        </div>



    </section> <!--// #ai_menu_list -->

    <section id="celebrity_area" class="section">
        <h3 class="title">
            셀럽 추천 상품을
            <br>
            할인 된 가격에 만나보세요 😎
        </h3>
        <div class="celeb_contents">
            <div class="conts_area">
                <div class="conts_img"></div>
                <div class="conts_desc">
                    <div>

                        <p>#민아짱 #푸르미르 #플리 추천</p>
                        <h5>
                            제철 채소 키트
                            <br>
                            내 몸 올바른 루틴 만들기
                        </h5>
                    </div>
                    <a href="#" class="conts_btn">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        공동 구매하기
                    </a>
                </div>
            </div> <!--// .conts_area -->
            <div class="conts_area">

                <div class="conts_desc">
                    <div>

                        <p>#소유랑 #쫄비 #김개란 추천</p>
                        <h5>
                            단백질, 식이섬유 헬스케어
                            <br>
                            닭가슴살 베이스의 샐러디 베스트셀러
                        </h5>
                    </div>
                    <a href="#" class="conts_btn">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        공동 구매하기
                    </a>
                </div>
                <div class="conts_img"></div>
            </div> <!--// .conts_area -->
            <div class="conts_area">
                <div class="conts_img"></div>
                <div class="conts_desc">
                    <div>

                        <p>#이중명 #피루리 추천</p>
                        <h5>
                            4주 단기완성 다이어트
                            <br>
                            올 여름도 샐러디로 준비해요
                        </h5>
                    </div>
                    <a href="#" class="conts_btn">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        공동 구매하기
                    </a>
                </div>
            </div> <!--// .conts_area -->
        </div> <!--// .celeb_contents -->
    </section> <!--// #celebrity_area -->

    <section id="cate_best" >
        <h3 class="title section">
            집앞까지 찾아가는 샐러디
            <br>
            정기 배송 상품 🚚
        </h3>
        <div class="cate_conts">
            <!-- tab button area -->
            <ul class="tab_btn">
                <li class="active" data-tab="salad_conts">샐러드</li>
                <li data-tab="diet_conts">식단</li>
                <li data-tab="snack_conts">간식</li>
                <li data-tab="project_conts">프로젝트</li>
            </ul>

            <!-- tab contents area -->
            <div id="salad_conts" class="tab_contents swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/cate_thumb_img_1.jpg'/>" alt="샐러드">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab_desc">
                                <p class="cont">4주 정기배송 주 5일</p>
                                <p class="prd_name">요요 걱정 NO!! / 당일 제조 / 가벼운 한끼 / 다이어트용 샐러드</p>
                                <div>
                                    <dl>
                                        <dd class="rate">
                                            <span class="value">15</span>
                                            <span class="unit">%</span>
                                        </dd>
                                        <dd class="price">
                                            <span class="value">165,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                        <dd class="price_regular">
                                            <span class="value">184,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                    </dl>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">3,499</span>
                                    </div>
                                </div> <!--// .tab_desc -->
                            </div>

                        </a>
                    </div> <!--// .swiper-slide -->
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/cate_thumb_img_2.jpg'/>" alt="샐러드">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab_desc">
                                <p class="cont">4주 정기배송 주 3일 배송</p>
                                <p class="prd_name">바른 루틴 챌린지 / 월,수,목 주 3일 / 야채 베이스 / 주문 당일 제조</p>
                                <div>
                                    <dl>
                                        <dd class="rate">
                                            <span class="value">13</span>
                                            <span class="unit">%</span>
                                        </dd>
                                        <dd class="price">
                                            <span class="value">89,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                        <dd class="price_regular">
                                            <span class="value">103,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                    </dl>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">1,452</span>
                                    </div>
                                </div> <!--// .tab_desc -->
                            </div>

                        </a>
                    </div> <!--// .swiper-slide -->
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/cate_thumb_img_3.jpg'/>" alt="샐러드">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab_desc">
                                <p class="cont">유튜버 김개란 강력 추천 !! 주 3일 배송</p>
                                <p class="prd_name">매일매일 든든하게 한 끼 / 단백질 베이스 / 월,수,목 / 주문 당일 제조</p>
                                <div>
                                    <dl>
                                        <dd class="rate">
                                            <span class="value">10</span>
                                            <span class="unit">%</span>
                                        </dd>
                                        <dd class="price">
                                            <span class="value">97,600</span>
                                            <span class="unit">원</span>
                                        </dd>
                                        <dd class="price_regular">
                                            <span class="value">107,360</span>
                                            <span class="unit">원</span>
                                        </dd>
                                    </dl>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">3,499</span>
                                    </div>
                                </div> <!--// .tab_desc -->
                            </div>

                        </a>
                    </div> <!--// .swiper-slide -->
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/cate_thumb_img_4.jpg'/>" alt="샐러드">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab_desc">
                                <p class="cont">4주 정기배송 주 5일</p>
                                <p class="prd_name">요요 걱정 NO!! / 당일 제조 / 가벼운 한끼 / 다이어트용 샐러드</p>
                                <div>
                                    <dl>
                                        <dd class="rate">
                                            <span class="value">17</span>
                                            <span class="unit">%</span>
                                        </dd>
                                        <dd class="price">
                                            <span class="value">165,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                        <dd class="price_regular">
                                            <span class="value">184,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                    </dl>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">3,499</span>
                                    </div>
                                </div> <!--// .tab_desc -->
                            </div>

                        </a>
                    </div> <!--// .swiper-slide -->
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="./images/cate_thumb_img_4.jpg" alt="샐러드">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab_desc">
                                <p class="cont">4주 정기배송 주 5일</p>
                                <p class="prd_name">요요 걱정 NO!! / 당일 제조 / 가벼운 한끼 / 다이어트용 샐러드</p>
                                <div>
                                    <dl>
                                        <dd class="rate">
                                            <span class="value">17</span>
                                            <span class="unit">%</span>
                                        </dd>
                                        <dd class="price">
                                            <span class="value">165,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                        <dd class="price_regular">
                                            <span class="value">184,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                    </dl>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">3,499</span>
                                    </div>
                                </div> <!--// .tab_desc -->
                            </div>

                        </a>
                    </div> <!--// .swiper-slide -->
                    <div class="swiper-slide">
                        <a href="#">
                            <div class="thumb_img">
                                <img src="<c:url value='/resources/images/cate_thumb_img_4.jpg'/>" alt="샐러드">
                                <!--  hover -->
                                <div class="thumb_hover">
                                    <ul>
                                        <li class="wish_icon"><img src="<c:url value='/resources/images/wish_icon.png'/>" alt="찜하기"></li>
                                        <li class="cart_icon"><img src="<c:url value='/resources/images/cart_icon.png'/>" alt="장바구니"></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab_desc">
                                <p class="cont">4주 정기배송 주 5일</p>
                                <p class="prd_name">요요 걱정 NO!! / 당일 제조 / 가벼운 한끼 / 다이어트용 샐러드</p>
                                <div>
                                    <dl>
                                        <dd class="rate">
                                            <span class="value">17</span>
                                            <span class="unit">%</span>
                                        </dd>
                                        <dd class="price">
                                            <span class="value">165,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                        <dd class="price_regular">
                                            <span class="value">184,000</span>
                                            <span class="unit">원</span>
                                        </dd>
                                    </dl>
                                    <div class="commend">
                                        <span class="comm_icon"></span>
                                        <span class="comm_no">3,499</span>
                                    </div>
                                </div> <!--// .tab_desc -->
                            </div>

                        </a>
                    </div> <!--// .swiper-slide -->
                </div>
                <div class="swiper-pagination"></div>
            </div> <!--// #salad_conts-->
            <div id="diet_conts" class="tab_contents swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">Slide 1</div>
                    <div class="swiper-slide">Slide 2</div>
                    <div class="swiper-slide">Slide 3</div>
                    <div class="swiper-slide">Slide 4</div>
                    <div class="swiper-slide">Slide 5</div>
                    <div class="swiper-slide">Slide 6</div>
                    <div class="swiper-slide">Slide 7</div>
                    <div class="swiper-slide">Slide 8</div>
                    <div class="swiper-slide">Slide 9</div>
                </div>
                <div class="swiper-pagination"></div>
            </div> <!--// #diet_conts -->
            <div id="snack_conts" class="tab_contents swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">Slide 1</div>
                    <div class="swiper-slide">Slide 2</div>
                    <div class="swiper-slide">Slide 3</div>
                    <div class="swiper-slide">Slide 4</div>
                    <div class="swiper-slide">Slide 5</div>
                    <div class="swiper-slide">Slide 6</div>
                    <div class="swiper-slide">Slide 7</div>
                    <div class="swiper-slide">Slide 8</div>
                    <div class="swiper-slide">Slide 9</div>
                </div>
                <div class="swiper-pagination"></div>
            </div> <!--// #snack_sonts-->
            <div id="project_conts" class="tab_contents swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">Slide 1</div>
                    <div class="swiper-slide">Slide 2</div>
                    <div class="swiper-slide">Slide 3</div>
                    <div class="swiper-slide">Slide 4</div>
                    <div class="swiper-slide">Slide 5</div>
                    <div class="swiper-slide">Slide 6</div>
                    <div class="swiper-slide">Slide 7</div>
                    <div class="swiper-slide">Slide 8</div>
                    <div class="swiper-slide">Slide 9</div>
                </div>
                <div class="swiper-pagination"></div>
            </div> <!--// #project_conts -->

        </div>
    </section> <!--// #cate_best -->

    <section id="video_area" class="section">
        <h3 class="title">샐러디 ON AIR 📺</h3>
        <div id="video_swiper_slide" class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <video class="on_video" src="<c:url value='/resources/video/video_01.mp4'/>" type="video/mp4" width="100%">

                    </video>
                    <button class="play_btn">재생</button>
                    <button id="stop_btn" class="stop_btn" style="display:none;">정지</button>
                </div>
                <div class="swiper-slide">
                    <video class="on_video" src="<c:url value='/resources/video/video_02.mp4'/>" type="video/mp4" width="100%">

                    </video>
                    <button class="play_btn">재생</button>
                    <button class="stop_btn" style="display:none;">정지</button>
                </div>
                <div class="swiper-slide">
                    <video class="on_video" src="<c:url value='/resources/video/video_04.mp4'/>" type="video/mp4" width="100%">

                    </video>
                    <button class="play_btn">재생</button>
                    <button class="stop_btn" style="display:none;">정지</button>
                </div>
                <div class="swiper-slide">
                    <video class="on_video" src="<c:url value='/resources/video/video_03.mp4'/>" type="video/mp4" width="100%">

                    </video>
                    <button class="play_btn">재생</button>
                    <button class="stop_btn" style="display:none;">정지</button>
                </div>
            </div> <!--// .swiper-wrapper -->
        </div> <!--// #video_swiper_slide -->
    </section>

    <section id="bt_banner" class="section">
        <a href="#">
            <div class="banner_txt">
                <p>최근 2개월 구매 내역에 따라 달라지는 다양한 멤버쉽 혜택</p>
                <h5>샐러디 멤버쉽 가입하고 <br>
                    최대 15% 할인 쿠폰 받아가세요</h5>
            </div>
            <img src="<c:url value='/resources/images/banner_img.png'/>" alt="배너">
        </a>
    </section>
</main>

<footer class="section">
    <div id="notice">
        <div>

            <h5>공지사항</h5>
            <div id="notice_swiper" class="swiper mySwiper">
                <ul class="swiper-wrapper">
                    <c:forEach var="item" items="${noticeList}">
                        <li class="swiper-slide">
                            <a href="#">${item.noticeTitle}</a>
                            <span>${item.regDt}</span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="controls_area">
                <div class="prev"></div>
                <div class="next"></div>
            </div>
        </div>
    </div> <!--// #notice -->
    <div class="ft_contents">
        <nav class="ft_menu">
            <ul>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">전자금융거래약관</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">자주 묻는 질문</a></li>
            </ul>
        </nav>
        <div class="ft_info">
            <div class="info">
                <p class="company">(주) 샐러디</p>
                <p class="about">
                    <span>주소</span>경기도 안성시 월곶면 안성대로 1432번길 51
                    <br>
                    <span>대표이사</span>전슬지
                    <span>개인정보책임</span>전슬지
                    <span>사업자등록번호</span>123-45-67890
                    <br>
                    <span>통신판매업 신고번호</span>제2023-경기안성-00164호
                    <a href="javascript:void(0)">[사업자정보확인]</a>
                </p>
            </div>
            <div class="ft_text">
                일부 상품의 경우 주식회사 샐러디는 통신판매의 당사자가 아닌 통신판매중개자로서
                <br>
                상품, 상품정보, 거래에 대한 책임이 제한될 수 있으므로, 각 상품 페이지에서
                <br>
                구체적인 내용을 확인하시기 바랍니다.
            </div>
            <p class="copy">
                copyright &copy; <span>salady</span> Corp. All Rights Reserved.
            </p>
        </div> <!--// .ft_info -->
        <div class="ft_cs_center">
            <p class="ft_cs">
                1233-4765
            </p>
            <p class="about">
                <span>C.S</span>평일 09:00 - 17:30 (점심 11:30 - 13:00)  주말 및 공휴일 제외
                <br>
                <span>e-mail</span>salady@salady.co.kr
                <span>fax</span>02-415-4342
            </p>
            <p class="ft_kg_text">
                <strong>KG 이니시스 구매안전 서비스</strong>
                <br>
                고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰이 가입한 PG에스크로
                구매안전서비스를 이용하실 수 있습니다
                <a href="#">[서비스 가입사실 확인]</a>
            </p>
        </div>



        <div class="sns_area">
            <a href="#"><img src="<c:url value='/resources/images/kakao_icon.png'/>" alt="카카오톡"></a>
            <a href="#"><img src="<c:url value='/resources/images/youtube_icon.png'/>" alt="유튜브"></a>
            <a href="#"><img src="<c:url value='/resources/images/naver_icon.png'/>" alt="네이버"></a>
            <a href="#"><img src="<c:url value='/resources/images/instar_icon.png'/>" alt="인스타그램"></a>
            <a href="#"><img src="<c:url value='/resources/images/facebook_icon.png'/>" alt="페이스북"></a>
        </div>
    </div>
</footer>

<script>

    // document.addEventListener("contextmenu", function(event) {
    //   event.preventDefault(); // 우클릭 이벤트를 막음
    // });

    // header fix
    function navigo (){
        const header = document.querySelector('header'); //헤더부분획득
        const headerheight = header.clientHeight;//헤더높이
        document.addEventListener('scroll', onScroll, { passive: true });//스크롤 이벤트
        function onScroll () {
            const scrollposition = pageYOffset;//스크롤 위치
            const hd = document.querySelector('header');//네비게이션
            if (headerheight<=scrollposition){//만약 헤더높이<=스크롤위치라면
                hd.classList.add('fix')//fix클래스를 네비에 추가
                $(".mypage_btn .menu_img").attr('src','<c:url value='/resources/images/mypage_icon_bk.png'/>');
                $(".category_btn .menu_img > img").attr('src','<c:url value='/resources/images/category_icon_black.png'/>');
                $(".lang_btn .menu_img").attr('src','<c:url value='/resources/images/global_icon_bk.png'/>');
            }
            else {//그 외의 경우
                hd.classList.remove('fix');//fix클래스를 네비에서 제거
                $(".mypage_btn .menu_img").attr('src','<c:url value='/resources/images/mypage_icon.png'/>');
                $(".category_btn .menu_img > img").attr('src','<c:url value='/resources/images/category_icon.png'/>');
                $(".lang_btn .menu_img").attr('src','<c:url value='/resources/images/global_icon.png'/>');
            }
        }

    }
    navigo()



</script>


</body>
</html>