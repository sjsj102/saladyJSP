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
    private String userId;      // 아이디
    private String userPw;      // 패스워드
    private String userName;    // 이름
    private String regDt;       // 가입일자
    private String delDt;       // 탈퇴일자
    private char active;        // 활성화유무
}
