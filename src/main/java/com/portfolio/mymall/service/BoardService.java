package com.portfolio.mymall.service;

import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Member;
import com.portfolio.mymall.domain.Reply;
import com.portfolio.mymall.dto.BoardDTO;
import com.portfolio.mymall.dto.PageRequestDTO;
import com.portfolio.mymall.dto.PageResultDTO;
import com.portfolio.mymall.dto.ReplyDTO;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public interface BoardService {
    public Long register(BoardDTO boardDTO);
    public boolean delete(Long seq);
    public PageResultDTO<BoardDTO, Object[]> getList(PageRequestDTO pageRequestDTO);
    public BoardDTO read(Long seq);
    public Long modify(BoardDTO boardDTO);


    default Board dtoToEntity(BoardDTO boardDTO)
    {
        Member member = Member.builder().id(boardDTO.getWriter_id()).build();

        Board board = Board.builder()
                .title(boardDTO.getTitle())
                .content(boardDTO.getContent())
                .writer_id(member)
                .build();

        return board;
    }

    default BoardDTO entityToDTO(Board board, Member member, Long replyCount){

        BoardDTO boardDTO = BoardDTO.builder()
                .seq(board.getSeq())
                .title(board.getTitle())
                .content(board.getContent())
                .regDate(board.getRegDate())
                .writer_id(member.getId())
                .nick(member.getNick())
                .replyCount(replyCount.intValue())
                .build();

        return boardDTO;
    }





    default ReplyDTO replyEntityToDTO(Reply reply){

        ReplyDTO replyDTO = ReplyDTO.builder()
                .seq(reply.getSeq())
                .board_seq(reply.getBoard_seq())
                .content(reply.getContent())
                .replyer(reply.getReplyer())
                .modDate(reply.getModDate())
                .regDate(reply.getRegDate())
                .build();

        return replyDTO;
    }


}
