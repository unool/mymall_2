package com.portfolio.mymall.controller;

import com.portfolio.mymall.config.auth.SessionUser;
import com.portfolio.mymall.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.web.servlet.oauth2.login.OAuth2LoginSecurityMarker;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@RequiredArgsConstructor
@Controller
public class HomeController {

    Logger logger = LoggerFactory.getLogger(HomeController.class);

//    private final PostsService postsService;
    private final HttpSession httpSession;


    @GetMapping("/")
    public String index(Model model){

        SessionUser user = (SessionUser) httpSession.getAttribute("user");

        logger.debug("index");

        if(user != null) {
            model.addAttribute("userName", user.getName());
            model.addAttribute("userImg", user.getPicture());
        }

        return "index";
    }

}
