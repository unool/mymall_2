package com.portfolio.mymall.service;

import com.portfolio.mymall.repository.MemberRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MemberServiceTest {

    @Autowired
    MemberService memberService;


    @Test
    public void clear(){
        memberService.clearMember();
    }

}
