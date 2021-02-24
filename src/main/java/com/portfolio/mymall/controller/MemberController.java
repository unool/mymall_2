package com.portfolio.mymall.controller;


import com.portfolio.mymall.dto.MemberDTO;
import com.portfolio.mymall.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping("/member")
@Controller
public class MemberController {

    MemberService memberService;

    @Autowired
    public MemberController(MemberService memberService) {
        this.memberService = memberService;
    }


    //로그인 팝업창 띄우기
    @GetMapping ("/login")
    public void login()
    {
     
    }


    //로그아웃
    @GetMapping("/logout")
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
        return "redirect:/member/login";
    }

    
    //가입창에서 등록 버튼 눌렀을때
    @PostMapping("/join")
    public String join(MemberDTO memberDTO) { // 회원 추가
        memberService.save(memberDTO);
        return "redirect:/member/login";
    }

    //회원가입창 띄우기
    @GetMapping("signup") 
    public void signup(){
    }

    @GetMapping("/success")
    public void success(){

    }

}
