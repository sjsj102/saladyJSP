package com.salady.saladyJSP.common.mapper;

import com.salady.saladyJSP.common.dto.NoticeDTO;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface MainMapper{

    List<NoticeDTO> selectNoticeList();

}

