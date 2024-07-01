package com.salady.saladyJSP.service;

import com.salady.saladyJSP.dto.NoticeDTO;

import java.util.List;

public interface MainService {

    List<NoticeDTO> selectNoticeList();
}
