package com.portfolio.mymall.repository;


import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Member;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Commit;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;
import java.util.Optional;


@SpringBootTest
//@Transactional
public class JpaMemberRepositoryTest {

    @Autowired
    MemberRepository memberRepository;

    @Test
    public void Insert(){


    }
}
