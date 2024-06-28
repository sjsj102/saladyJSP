package com.salady.saladyJSP.controller;

import com.salady.saladyJSP.service.MainService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MainController {

    // private final MainService mainService;

    @RequestMapping(value={"","/"})
    public String MainView(){
        return "index";
    }
}
