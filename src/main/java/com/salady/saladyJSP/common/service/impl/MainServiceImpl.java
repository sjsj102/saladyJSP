package com.salady.saladyJSP.common.service.impl;

import com.salady.saladyJSP.common.dto.NoticeDTO;
import com.salady.saladyJSP.common.mapper.MainMapper;
import com.salady.saladyJSP.common.service.MainService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MainServiceImpl implements MainService {

    private final MainMapper mainMapper;

    /**
     * 메인
     * @return
     */
    public List<NoticeDTO> selectNoticeList(){ return mainMapper.selectNoticeList(); };

}
