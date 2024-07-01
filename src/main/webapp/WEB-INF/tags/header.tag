<%@ tag description="header Tag" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header>
    <section class="header_inner">
        <h1 id="logo">
            <a href="#">salady</a>
        </h1> <!--// #logo -->
        <nav>
            <ul class="menu">
                <li><a href="#">이달의 메뉴</a></li>
                <li><a href="#">정기배송</a></li>
                <li><a href="#">신상품</a></li>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">리뷰</a></li>
            </ul>
        </nav>
        <div class="top_icon">
            <ul class="dp_icon">
                <li class="lang_btn">
                    <a href="#"><img class="menu_img" src="<c:url value='/resources/images/global_icon.png'/>" alt="글로벌 언어 메뉴"></a>
                    <!-- hover menu -->
                    <ul class="sub_menu">
                        <li><a href="#">KO</a></li>
                        <li><a href="#">EN</a></li>
                        <li><a href="#">JP</a></li>
                    </ul> <!--// .mypage_menu-->
                </li>
                <li class="mypage_btn ">
                    <a href="#"><img class="menu_img" src="<c:url value='/resources/images/mypage_icon.png'/>" alt="마이페이지"></a>
                    <!-- hover menu -->
                    <c:choose >
                        <c:when test="${empty userName}">
                            <ul class="sub_menu">
                                <li><a href="#">로그인</a></li>
                                <li><a href="#">회원가입</a></li>
                                <li><a href="#">마이페이지</a></li>
                                <li><a href="#">배송조회</a></li>
                                <li><a href="#">1:1 문의</a></li>
                            </ul> <!--// .mypage_menu-->
                        </c:when>
                        <c:otherwise>
                            <ul class="sub_menu">
                                <li><a href="#">로그아웃</a></li>
                                <li><a href="#">마이페이지</a></li>
                                <li><a href="#">배송조회</a></li>
                                <li><a href="#">1:1 문의</a></li>
                            </ul> <!--// .mypage_menu-->
                        </c:otherwise>
                    </c:choose>

                </li>
                <li class="category_btn">
                    <a href="javascript:void(0)" class="menu_img" ><img src="<c:url value='/resources/images/category_icon.png'/>" alt="카테고리"></a>
                    <a href="javascript:void(0)" class="close" ><img src="<c:url value='/resources/images/close_btn.png'/>" alt="닫기"></a>
                </li>
            </ul>
            <ul class="m_icon">
                <li class="category_btn">
                    <a href="javascript:void(0)" class="menu_img" ><img src="<c:url value='/resources/images/category_icon.png'/>" alt="카테고리"></a>
                    <a href="javascript:void(0)" class="close" ><img src="<c:url value='/resources/images/close_btn.png'/>" alt="닫기"></a>
                </li>
            </ul>
        </div>
    </section> <!--// .header_inner -->


</header>