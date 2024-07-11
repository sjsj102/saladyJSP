<%--
  Created by IntelliJ IDEA.
  User: jsj
  Date: 2024-07-01
  Time: 오후 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="<%= request.getContextPath() %>"/>
<html>
<head>
    <mytag:meta_tag title="로그인"/>
    <mytag:css_tag />
    <!-- css -->
    <link rel="stylesheet" href="<c:url value='/resources/css/login_style.css' />">
    <mytag:script_tag />
    <!-- js -->
</head>
<body>
<div id="loginWrap">
    <div class="conts_wrap">
        <h1 id="logo"><a href="${path}">salady</a></h1>
        <form id="inputUserInfo" name="formLogin" action="#" method="post">
            <div>
                <input type="text" placeholder="아이디를 입력하세요"
                       onfocus="this.placeholder=''"
                       onblur="this.placeholder='아이디를 입력하세요'"
                       name="userId">
            </div>
            <div>
                <input type="password" placeholder="********" name="userPw">
            </div>
            <button class="login_btn" type="button" onkeyup="loginInfoSubmit()" onclick="loginInfoSubmit()">로그인</button>
            <p class="join_txt">
                샐러디 계정이 없다면 <a href='${path}/join.do'>회원가입</a> 하세요!
            </p>
        </form>
        <div class="sns_area">
            <ul>
                <li><a href="#"><img src="<c:url value='/resources/images/kakao_icon.png' />" alt="카카오톡으로 로그인" title="카카오톡으로 로그인"></a></li>
                <li><a href="#"><img src="<c:url value='/resources/images/kakao_icon.png' />" alt="구글 계정으로 로그인" title="구글 계정으로 로그인"></a></li>
                <li><a href="#"><img src="<c:url value='/resources/images/facebook_icon.png' />" alt="페이스북 계정으로 로그인" title="페이스북 계정으로 로그인"></a></li>
                <li><a href="#"><img src="<c:url value='/resources/images/instar_icon.png' />" alt="인스타그램으로 로그인" title="인스타그램으로 로그인"></a></li>
            </ul>
        </div>
    </div> <!--// .conts_wrap -->
</div> <!--// #loginWrap -->


<script type="text/javascript">



    function loginInfoSubmit(){
        // console.log("로그인 버튼 클릭 이벤트 발생");
        let inputId = $("[name='userId']").val();
        let inputPw = $('[name="userPw"]').val();

        $('.err_message').remove();

        if(inputId.length != 0 && inputPw.length != 0){
            // 아이디 , 비밀번호 입력
            document.getElementById("inputUserInfo").submit(); // submit
        } else {
            if(inputId.length == 0){
                // 아이디 미입력
                $('[name="userId"]').after("<span class='err_message'>아이디를 입력하세요.</span>");
            }
            if(inputPw.length == 0){
                // 비밀번호 미입력
                // console.log("비밀번호 미입력");
                $('[name="userPw"]').after("<span class='err_message'>비밀번호를 입력하세요.</span>");
            }
        }


    }

    var submitElement = document.getElementById("inputUserInfo");

    // enter 이벤트 제어
    submitElement.addEventListener("keyup", function (event) {
        if (event.keyCode === 13) {
            event.preventDefault();
            $(".login_btn").click();
        }
    });


</script>
</body>
</html>
