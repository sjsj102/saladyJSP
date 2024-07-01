package com.salady.saladyJSP.service.impl;

import com.salady.saladyJSP.dto.NoticeDTO;
import com.salady.saladyJSP.mapper.MainMapper;
import com.salady.saladyJSP.service.MainService;
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
