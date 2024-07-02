package com.salady.saladyJSP.common.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
public class JoinController {

    @RequestMapping("/join.do")
    public String JoinView(Model model){

        return "join/join";
    }
}
