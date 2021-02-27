package com.portfolio.mymall.controller;


import com.portfolio.mymall.domain.Reply;
import com.portfolio.mymall.dto.BoardDTO;
import com.portfolio.mymall.dto.PageRequestDTO;
import com.portfolio.mymall.dto.ReplyDTO;
import com.portfolio.mymall.service.ReplyService;
import com.portfolio.mymall.service.ReplyServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("reply")
public class ReplyController {

    ReplyService replyService;

    @Autowired
    public ReplyController(ReplyService replyService) {
        this.replyService = replyService;
    }

    @PostMapping("register")
    public String register(ReplyDTO replyDTO, RedirectAttributes redirectAttributes){

        Reply reply= replyService.registerReply(replyDTO);

        redirectAttributes.addAttribute("seq",reply.getBoard_seq());
        return "redirect:/board/read";
    }

    @GetMapping("delete")
    public String delete(Long seq, RedirectAttributes redirectAttributes)
    {
        Reply reply = replyService.deleteReply(seq);

        redirectAttributes.addAttribute("seq", reply.getBoard_seq());
        return "redirect:/board/read";

    }


    @ResponseBody
    @PostMapping("getReplyList")
    public List<Object> getReplyList(Long boardSeq)
    {

            return replyService.findReply(boardSeq);
    }

    @ResponseBody
    @PostMapping("saveReply")
    public void saveReply(@RequestBody ReplyDTO replyDTO) //
    {
        replyService.registerReply(replyDTO);

    }

    @ResponseBody
    @PostMapping("/modifyReply")
    public void modify(@RequestBody ReplyDTO replyDTO)
    {
        replyService.modifyReply(replyDTO);

    }

    @ResponseBody
    @PostMapping("/deleteReply")
    public void delete(Long seq)
    {
        replyService.deleteReply(seq);
    }

//    @PostMapping("test")
//    public void test(@RequestBody ReplyDTO replyDTO){
//
//    }
}
