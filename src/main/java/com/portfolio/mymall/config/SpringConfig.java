package com.portfolio.mymall.config;


import com.portfolio.mymall.repository.*;
import com.portfolio.mymall.service.BoardService;
import com.portfolio.mymall.service.BoardServiceImpl;
import com.portfolio.mymall.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.Marker;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;

@Configuration
public class SpringConfig {

    private final EntityManager entityManager;

    @Autowired
    public SpringConfig(EntityManager entityManager)
    {
        this.entityManager = entityManager;
    }


    //service
    @Bean
    public MemberService memberService()
    {
        return new MemberService(memberRepository());
    }

    @Bean
    public BoardService boardService()
    {
        return new BoardServiceImpl(boardRepository());
    }


    //repository
    @Bean
    public MemberRepository memberRepository()
    {
        return new JpaMemberRepository(entityManager);
    }

    @Bean
    public BoardRepository boardRepository()
    {
        return new JpaBoardRepository(entityManager);
    }

    @Bean
    public UserRepository userRepository(){return new UserRepository(entityManager);}
}
