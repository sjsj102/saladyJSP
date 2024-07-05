<%--
  Created by IntelliJ IDEA.
  User: jsj
  Date: 2024-07-02
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="<%= request.getContextPath() %>" />

<!DOCTYPE html>
<html lang="ko">
<head>
    <mytag:meta_tag title="회원가입"/>

    <!-- css -->
    <mytag:css_tag />
    <link rel="stylesheet" href="<c:url value='/resources/css/join_style.css' />"/>

    <mytag:js_tag />
    <!-- js -->
</head>
<body>
    <div id="loginWrap">
        <div class="conts_wrap">
            <h1 id="logo" class="bk"><a href="<c:url value='${path}/' />">salady</a></h1>
            <form id="frm" action="#" method="post">
                <section class="input_area">
                    <input type="text" class="user_id" placeholder="아이디"
                           onfocus="this.placeholder=''"
                           onblur="this.placeholder='아이디'"
                           name="userId">
<%--                    <span class="email_txt">@ salady.com</span>--%>
                </section>
                <section class="input_area password_area">
                    <input type="password" placeholder="비밀번호"
                           onfocus="this.placeholder=''"
                           onblur="this.placeholder='비밀번호'"
                           maxlength="12"
                           name="userPw">
                    <span class="view_btn"></span>
                </section>
                <section class="input_area">
                    <input type="text" placeholder="이름"
                           onfocus="this.placeholder=''"
                           onblur="this.placeholder='이름'"
                           name="userName">
                </section>
                <section class="input_area">
                    <input type="text" placeholder="이메일 (선택)"
                           onfocus="this.placeholder=''"
                           onblur="this.placeholder='이메일 (선택)'"
                           name="userEmail"> @
                    <select name="emailDomain" id="emailDomain">
                        <option value="default_option" selected>선택</option>
                        <option value="naver">naver.com</option>
                        <option value="daum">hanmail.net</option>
                        <option value="kakao">kakao.com</option>
                        <option value="google">gmail.com</option>
                    </select>
                </section>
                <section class="input_area">
                    <input type="text" placeholder="생년월일 8자리"
                           onfocus="this.placeholder=''"
                           onblur="this.placeholder='생년월일 8자리'"
                           maxlength="8"
                           name="userBirst">
                </section>
                <section class="input_area">
                    <div>
                        <button type="button" aria-expanded="false" class="toggle_btn">
                            통신사
                        </button>

                        <ul class="telecom_area">
                            <li>
                                <button type="button" class="option_btn"value="kt">KT</button>
                            </li>
                            <li>
                                <button type="button" class="option_btn" value="skt">SKT</button>
                            </li>
                            <li>
                                <button type="button" class="option_btn" value="lg">LG</button>
                            </li>
                        </ul>

                    </div>
                    <input type="hidden" class="user_telecom_input" name="userTelecom">
                    <input type="text" placeholder="전화번호"
                           onfocus="this.placeholder=''"
                           onblur="this.placeholder='전화번호'"
                           oninput="hypenTel(this)" maxlength="13"
                           name="userTel">
                </section>

                <section class="checkbox_area">
                    <input type="checkbox" id="exp_checkbox" name="btn_expand" value="true">
                    <label for="exp_checkbox"><span>(필수)</span> 회원정보 제공에 동의합니다.</label>
                </section>
                <button class="login_btn" type="button" onclick="submitEffectiveness()">회원가입하기</button>

            </form>

        </div> <!--// .conts_wrap -->
    </div> <!--// #loginWrap -->
    <script>


        /**
         *submit 유효성 검사
         */
        function submitEffectiveness(){

            let userIdValue = $('[name="userId"]').val();
            let userPwValue = $('[name="userPw"]').val();
            let userNameValue = $('[name="userName"]').val();
            let userBirstValue = $('[name="userBirst"]').val();
            let userTelValue = $('[name="userTel"]').val();
            let userTelecom = $('[name="userTelecom"]').val();

            const userTypingArray = []
            userTypingArray.push(userIdValue,userPwValue,userNameValue,userBirstValue,userTelValue,userTelecom);

            /*   			console.log(userIdValue+"<--userIdValue");
                              console.log(userPwValue+"<--userPwValue");
                              console.log(userNameValue+"<--userNameValue");
                              console.log(userBirstValue+"<--userBirstValue");
                              console.log(userTelValue+"<--userTelValue");
                              console.log(userTelecom+"<--userTelecom");
                               */

            $('.err_message').remove();  // 추가된 에러 메시지가 있다면 먼저 삭제

            // 아이디 미입력 검증
            if(userIdValue.length == 0) {
                $('[name="userId"]').parent().after("<span class='err_message'>아이디는 필수 입력사항 입니다.</span>");
            }
            // 패스워드 미입력 검증
            if(userPwValue.length == 0) {
                $('[name="userPw"]').parent().after("<span class='err_message'>사용할 비밀번호를 입력해주세요.</span>");
            }
            // 이름 미입력 검증
            if(userNameValue.length == 0) {
                $('[name="userName"]').parent().after("<span class='err_message'>이름을 입력해주세요.</span>");
            }
            // 생년월일 미입력 검증
            if(userBirstValue.length == 0) {
                $('[name="userBirst"]').parent().after("<span class='err_message'>생년월일을 입력해주세요.</span>");
            }
            // 전화번호 미입력 검증
            if(userTelecom.length == 0 ) { // 통신사 미선택 검증
                $('[name="userTel"]').parent().after("<span class='err_message'>통신사를 선택해주세요.</span>");

            } else {
                if(userTelValue.length == 0){ // 전화번호 미입력 검증
                    $('[name="userTel"]').parent().after("<span class='err_message'>전화번호를 입력해주세요.</span>");
                }
            }


            // 체크박스 체크 유무
            if($('#exp_checkbox').is(':checked')){
            	document.getElementById('frm').submit();
            	alert("회원가입이 완료되었습니다.");
                let comfirmBox = comfirm("로그인하시겠습니까?");
                    	if(comfirmBox == true){
                    <%--// 		<% 	response.sendRedirect(request.getContextPath()+"/user/login.jsp"); %>--%>
                    	} else {
                    <%--// 		<% 	response.sendRedirect(request.getContextPath()); %>--%>
                    	}
            } else {
            	$('.checkbox_area').append("<span class='err_message'>필수 항목에 체크해주세요.</span>");
            }

            // // 아이디 중복 체크
            // <%

                    // %>
        }





        /**
         * PASSWORD 영역 TYPE 및 아이콘 변환
         */
        $(".password_area > span").on("click",function(){
            let isView = $(this).hasClass("view_btn");
            //  console.log(this);
            if(isView){
                $(".password_area > input").attr("type","text");
                $(this).attr('class','hide_btn');
            } else {
                $(".password_area > input").attr("type","password");
                $(this).attr('class','view_btn');
            }
        });

        // userTel 영역 번호 자동 엔하이픈 생성
        const hypenTel = (target) => {
            target.value = target.value
                .replace(/[^0-9]/g, '')
                .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
        }


        /**
         * TELECOM 영역 토글
         */
        $(".toggle_btn").click(function(e) {
            $(this).toggleClass("on");
            e.stopPropagation(); // 이벤트 캡처링 버블링 전파
            if ($(this).attr("aria-expanded") === "true") {
                $(this).attr("aria-expanded", "false");
                $(this).siblings('.telecom_area').css({'display':'none'});
            } else {
                $(this).attr("aria-expanded", "true");
                $(this).siblings('.telecom_area').css({'display':'flex'});
            }
        })

        $(".option_btn").on("click",function(){
            let btn_text = $(this).text();
            $('.toggle_btn').text(btn_text);
            $(".toggle_btn").attr("aria-expanded", "false");
            $('.toggle_btn').removeClass('on');
            $(".toggle_btn").siblings('.telecom_area').css({'display':'none'});
        });


        /**
         * 통신사 button value 값 input
         */
        $(".option_btn").on("click",function(){
            var value = $(this).val();
            $(".user_telecom_input").val(value);
        });

    </script>

</body>
</html>
