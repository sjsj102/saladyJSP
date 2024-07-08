package com.salady.saladyJSP.common.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 유저정보 DTO
 * 전슬지 최초생성
 * 2024-07-01
 * ====================
 * 수정사항
 *
 */
@Getter @Setter @ToString
public class UserDTO {
    private int userSn;                 // 유저 번호
    private String userId;              // 아이디
    private String userPw;              // 패스워드
    private String userName;            // 이름
    private String userEmail;           // 유저 아이디
    private String userTel;             // 유저 전화번호
    private String regDt;               // 가입일자
    private String delDt;               // 탈퇴일자
    private char active;                // 활성화유무
    private String userAuthorCd;        // 사용자 권한
    private String lastPasswordUpdtDt;  // 유저 비밀번호 변경 최종 일자
    private String lastUpdtDt;          // 마지막 업데이트 일자
    private int crtfcFailCo;            // 인증 실패 횟수
}
