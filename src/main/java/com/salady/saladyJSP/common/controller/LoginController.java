package com.salady.saladyJSP.common.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequiredArgsConstructor
public class LoginController {

    @RequestMapping("/login.do")
    public String loginView(Model model){

        return "login/login";
    }
}
