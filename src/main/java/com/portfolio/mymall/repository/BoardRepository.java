package com.portfolio.mymall.repository;

import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Member;

import java.util.List;
import java.util.Optional;


//각 레포지토리마다의 basic 기능을 정의하기 위한 인터페이스
public interface BoardRepository {
    //basic
    Board save(Board board);
    Boolean deleteBySeq(Long seq);
    List<Object[]> findBySeq(Long seq);
    List<Board> findAll();



    List<Object[]> getBoardWithMemberReplyAll(Integer firstIndex, Integer pageSize);
    Long getBoardTotalCount();

}
