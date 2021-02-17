package com.portfolio.mymall.service;


import com.portfolio.mymall.domain.Member;
import com.portfolio.mymall.repository.MemberRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class MemberService {

    Logger logger = LoggerFactory.getLogger(MemberService.class);
    private final MemberRepository memberRepository;

    public MemberService(MemberRepository memberRepository)
    {
        this.memberRepository = memberRepository;
    }

    public void save(Member member)
    {
        memberRepository.save(member);
    }


    public void clearMember()
    {
        memberRepository.clearAll();
    }

    public void findAll()
    {
        memberRepository.findAll();
    }

}
