package com.salady.saladyJSP.common.controller;

import com.salady.saladyJSP.common.service.MainService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Slf4j
@Controller
@RequiredArgsConstructor
public class MainController {

    private final MainService mainService;

    @RequestMapping(value={"","/"})
    public String MainView(Model model,
                           HttpSession session){

        String userName = (String) session.getAttribute("userName");


        model.addAttribute("userName", userName);
        model.addAttribute("noticeList", mainService.selectNoticeList());

        return "index";
    }
}
