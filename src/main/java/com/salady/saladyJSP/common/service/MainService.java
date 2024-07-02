package com.salady.saladyJSP.common.service;

import com.salady.saladyJSP.common.dto.NoticeDTO;

import java.util.List;

public interface MainService {

    List<NoticeDTO> selectNoticeList();
}
