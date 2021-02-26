package com.portfolio.mymall.controller;

import com.portfolio.mymall.domain.Member;
import com.portfolio.mymall.dto.BoardDTO;
import com.portfolio.mymall.dto.PageRequestDTO;
import com.portfolio.mymall.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/board")
public class BoardController {

    BoardService boardService;
    Logger logger;

    @Autowired
    public BoardController(BoardService boardService) {
        this.boardService = boardService;
        this.logger = LoggerFactory.getLogger(HomeController.class);
    }

    @GetMapping("/list")
    public void list(@ModelAttribute("requestDTO") PageRequestDTO pageRequestDTO, Model model) {
        model.addAttribute("result", boardService.getList(pageRequestDTO));

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

    }

    @GetMapping({"/read","/modify"})
    public void read(@ModelAttribute("requestDTO") PageRequestDTO pageRequestDTO, Long seq, Model model)
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Member member = null;
        String reqMemberName = authentication.getName();

        if(reqMemberName.equals("anonymousUser")) //로그인 안 한 경우
        {
            member = Member.builder().build();
        }
        else
        {
            member = (Member) authentication.getPrincipal();
        }


        model.addAttribute("dto", boardService.read(seq));
        model.addAttribute("reqMember", member);
    }



    @GetMapping("/register")
    public void register(Model model)
    {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        Member member = null;
        try {
            member = (Member) authentication.getPrincipal();
        }
        catch (Exception e)
        {
            System.out.println(e.getMessage());
            //예외처리 필요
        }
        finally {
            String id = member == null ? "empty" : member.getId();
        }

        model.addAttribute("member", member);
    }

    @PostMapping("/register")
    public String register(BoardDTO boardDTO, RedirectAttributes redirectAttributes)
    {
        Long seq = boardService.register(boardDTO);

        return "redirect:/board/list";
    }


    @PostMapping("/modify")
    public String modify(PageRequestDTO pageRequestDTO, BoardDTO boardDTO)
    {
        Long seq = boardService.modify(boardDTO);

        return "redirect:/board/list";
    }

    @GetMapping("/delete")
    public String delete(Long seq, RedirectAttributes redirectAttributes){

        boardService.delete(seq);

        redirectAttributes.addFlashAttribute("seq", seq);

        return "redirect:/board/list";
    }


}