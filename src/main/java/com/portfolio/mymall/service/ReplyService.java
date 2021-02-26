package com.portfolio.mymall.service;

import com.portfolio.mymall.domain.Reply;
import com.portfolio.mymall.dto.ReplyDTO;

public interface ReplyService {

    public Reply registerReply(ReplyDTO replyDTO);

    public Reply deleteReply(Long seq);

    default Reply dtoToEntity(ReplyDTO replyDTO)
    {
        Reply reply = Reply.builder()
                .board_seq(replyDTO.getBoard_seq())
                .content(replyDTO.getContent())
                .replyer(replyDTO.getReplyer())
                .build();

        return reply;
    }



}
