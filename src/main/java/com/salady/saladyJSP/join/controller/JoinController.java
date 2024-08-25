package com.salady.saladyJSP.join.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequiredArgsConstructor
public class JoinController {

    @RequestMapping("/join.do")
    public String JoinView(Model model){

        return "join/join";
    }
}
