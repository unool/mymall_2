package com.portfolio.mymall.repository;

import com.portfolio.mymall.domain.Reply;

import javax.persistence.EntityManager;
import java.util.List;

public class JpaReplyRepository implements ReplyRepository{

    EntityManager entityManager;

    public JpaReplyRepository(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public List<Object> findByBoardSeq(Long boardSeq) {
        List<Object> result = entityManager.createQuery("select r from Reply r where r.board_seq = :boardSeq")
                .setParameter("boardSeq", boardSeq)
                .getResultList();
        return result;
    }

    @Override
    public Reply save(Reply reply) {
        entityManager.persist(reply);
        return reply;
    }

    @Override
    public Reply deleteBySeq(Long replySeq) {
        Reply reply = entityManager.find(Reply.class, replySeq);
        entityManager.remove(reply);
        return reply;
    }

    @Override
    public Reply modifyBySeq(String content, Long replySeq) {
        Reply reply = entityManager.find(Reply.class, replySeq);
        reply.setContent(content);
        return reply;
    }
}
