package com.portfolio.mymall.repository;


import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Member;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

@Rollback(false)
@Transactional
@SpringBootTest
public class JpaBoardRepositoryTest {

    @Autowired
    BoardRepository boardRepository;


    @Test
    public void Insert(){
        Member member = Member.builder()
                .id("member8")
                .build();

        Board board = Board.builder()
                .title("보드 단위 테스트")
                .content("내용")
                .writer_id(member)
                .build();

        boardRepository.save(board);

    }


}
