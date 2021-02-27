package com.portfolio.mymall.repository;

import com.portfolio.mymall.domain.Reply;

import java.util.List;

public interface ReplyRepository {

    List<Object> findByBoardSeq(Long boardSeq);
    Reply save(Reply reply);
    Reply deleteBySeq(Long replySeq);
    Reply modifyBySeq(String content, Long replySeq);
}
