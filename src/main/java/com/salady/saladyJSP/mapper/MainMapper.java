package com.salady.saladyJSP.mapper;

import com.salady.saladyJSP.dto.NoticeDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MainMapper {

    List<NoticeDTO> selectNoticeList();

}
