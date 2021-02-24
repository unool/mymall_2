package com.portfolio.mymall.repository;

import com.portfolio.mymall.domain.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

import javax.persistence.EntityManager;
import java.util.List;
import java.util.Optional;


//순수 JPA 구현 Repository

public class JpaMemberRepository implements MemberRepository {

    private EntityManager em;


    public JpaMemberRepository(EntityManager em) {
        this.em = em;

    }

    @Override
    public Member save(Member member) {
        em.persist(member);
        return member;
    }

    @Override
    public Optional<Member> findBySeq(Long seq) {
        return Optional.empty();
    }

    @Override
    public Optional<Member> findById(String id) {
        List<Member> result = em.createQuery("select m from Member m where m.id = :id")
                .setParameter("id", id)
                .getResultList();

        return result.stream().findAny();
    }

    @Override
    public List<Member> findAll() {
        return null;
    }

    @Override
    public Boolean clearAll() {
        return null;
    }
}
