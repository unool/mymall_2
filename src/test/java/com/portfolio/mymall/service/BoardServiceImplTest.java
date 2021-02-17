package com.portfolio.mymall.service;

import com.portfolio.mymall.dto.BoardDTO;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class BoardServiceImplTest {

    @Autowired
    BoardService boardService;

    @Test
    public void Insert_test(){

        BoardDTO boardDTO = BoardDTO.builder()
                .title("테스트 타이틀")
                .content("테스트 컨텐트")
                .writer_id("member7")
                .build();

        Long seq = boardService.register(boardDTO);

    }

    @Test
    public void Update_test(){

        BoardDTO boardDTO = BoardDTO.builder()
                .title("테스트 타이틀")
                .content("테스트 컨텐트")
                .writer_id("member7")
                .build();

        Long seq = boardService.register(boardDTO);

    }

    @Test
    public void read()
    {
        BoardDTO boardDTO = boardService.read(50L);
        System.out.println(boardDTO);
//        Assertions.assertThat(boardDTO)
//                .extracting("title",)
    }

//    @Test
//    public void save()
//    {
//        BoardDTO boardDTO = BoardDTO.builder()
//                .title("제목임")
//                .content("당연히 내용이지")
//                .writer_id("member12")
//                .build();
//
//        Long seq = boardService.register(boardDTO);
//        System.out.println(seq);
//    }
}
