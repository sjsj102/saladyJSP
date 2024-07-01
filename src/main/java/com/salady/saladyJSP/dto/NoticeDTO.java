package com.salady.saladyJSP.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * 공지사항 DTO
 * 전슬지 최초생성
 * 2024-07-01
 * ====================
 * 수정사항
 *
 */
@Getter @Setter @ToString
public class NoticeDTO {
    private String noticeId;            // 공지사항 고유번호
    private String noticeTitle;         // 공지사항 제목
    private String noticeSubtitle;      // 공지사항 서브 제목
    private String noticeContents;      // 공지사항 내용
    private String regDt;               // 등록일자
    private String reDt;                // 수정일자
}
