package com.portfolio.mymall.service;

import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Reply;
import com.portfolio.mymall.dto.ReplyDTO;
import com.portfolio.mymall.repository.ReplyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;


@Transactional
public class ReplyServiceImpl implements ReplyService {

    private final ReplyRepository replyRepository;

    public ReplyServiceImpl(ReplyRepository replyRepository) {
        this.replyRepository = replyRepository;
    }

    public Reply registerReply(ReplyDTO replyDTO){

        Reply reply = dtoToEntity(replyDTO);

        return replyRepository.save(reply);
    }

    public Reply deleteReply(Long seq)
    {
        return replyRepository.deleteBySeq(seq);
    }

}
