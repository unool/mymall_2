package com.portfolio.mymall.repository;

import com.portfolio.mymall.domain.Member;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Configuration;

import java.util.List;
import java.util.Optional;


public interface MemberRepository {

    Member save(Member member);
    Optional<Member> findBySeq(Long seq);
    Optional<Member> findById(String id);
    List<Member> findAll();
    Boolean clearAll();

}
