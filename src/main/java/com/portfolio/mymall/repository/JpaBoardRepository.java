package com.portfolio.mymall.repository;

import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Member;
import com.portfolio.mymall.dto.BoardDTO;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;
import java.util.Optional;

public class JpaBoardRepository implements BoardRepository{

    private final EntityManager entityManager;

    public JpaBoardRepository(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    @Override
    public Board save(Board board) {
        System.out.println("======" + board+"=====");
        entityManager.persist(board);
        System.out.println("======" + board+"=====");
        return board;
    }

    @Override
    public Long deleteBySeq(Long seq) {
        Board board = entityManager.find(Board.class, seq);
        entityManager.remove(board);  // 트랜젝션 커밋시 반영됨.

        return seq;
    }

    @Override
    public List<Object[]> findBySeq(Long seq) {
        List<Object[]> result = entityManager.createQuery("select b, m, count(r) from Board b " +
                "left join b.writer_id m left join Reply r on b.seq = r.board_seq where b.seq = :seq group by b")
                .setParameter("seq", seq).getResultList();
        return result;
    }

    @Override
    public List<Board> findAll() {
        return entityManager.createQuery("select b from Board b", Board.class)
                .getResultList();

    }



    //페이징

    @Override
    public Long getBoardTotalCount(){
        return entityManager.createQuery
                ("select count(b) from Board b",Long.class)
                .getSingleResult();
    }



    @Override
    public List<Object[]>  getBoardWithMemberReplyAll(Integer firstIndex, Integer pageSize) {

        List<Object[]>  object = entityManager.createQuery("SELECT b, m, count(r) FROM Board b " +
                "left join Reply r on b.seq = r.board_seq LEFT JOIN b.writer_id m GROUP BY b order by b.seq desc")
                .setFirstResult(firstIndex)
                .setMaxResults(pageSize)
                .getResultList();

        return object;
    }


    //페이징




}
