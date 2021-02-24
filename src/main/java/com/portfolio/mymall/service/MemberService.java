package com.portfolio.mymall.service;


import com.portfolio.mymall.domain.Member;
import com.portfolio.mymall.dto.MemberDTO;
import com.portfolio.mymall.repository.MemberRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.swing.text.html.Option;
import java.util.Optional;

@Transactional
public class MemberService implements UserDetailsService {

    Logger logger = LoggerFactory.getLogger(MemberService.class);
    private final MemberRepository memberRepository;

    public MemberService(MemberRepository memberRepository)
    {
        this.memberRepository = memberRepository;
    }

    public void clearMember()
    {
        memberRepository.clearAll();
    }

    public void findAll()
    {
        memberRepository.findAll();
    }

    @Override
    public Member loadUserByUsername(String s) throws UsernameNotFoundException {

        Optional<Member> result = memberRepository.findById(s);

        Member member;

        if(result.isPresent())
        {
            member = result.get();
        }
        else
        {
            member = Member.builder().build();
            //예외처리
        }

        return member;
    }

    public String save(MemberDTO memberDTO)
    {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        memberDTO.setPassword(encoder.encode(memberDTO.getPassword()));

        return memberRepository.save(Member.builder()
                .id(memberDTO.getId())
                .auth(memberDTO.getAuth())
                .password(memberDTO.getPassword())
                .nick(memberDTO.getNick())
                .base(memberDTO.getBase())
                .detail(memberDTO.getDetail())
                .phone(memberDTO.getPhone())
                .build()).getId();
    }

}
