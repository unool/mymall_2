package com.portfolio.mymall.controller;

import com.portfolio.mymall.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    Logger logger = LoggerFactory.getLogger(HomeController.class);


    @GetMapping("/")
    public String main(){
        System.out.println("mainsout");
        logger.debug("main");
        return "index";
    }

}
