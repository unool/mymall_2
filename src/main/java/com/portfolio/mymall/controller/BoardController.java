package com.portfolio.mymall.controller;

import com.portfolio.mymall.dto.BoardDTO;
import com.portfolio.mymall.dto.PageRequestDTO;
import com.portfolio.mymall.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
    }

    @GetMapping("/read")
    public void read(@ModelAttribute("requestDTO") PageRequestDTO pageRequestDTO, Long seq, Model model)
    {
        System.out.println("=====read======");
        model.addAttribute("dto", boardService.read(seq));
    }

    @GetMapping("/register")
    public void register()
    {

    }

    @PostMapping("/register")
    public String register(BoardDTO boardDTO, RedirectAttributes redirectAttributes)
    {
        Long seq = boardService.register(boardDTO);

        return "redirect:/board/list";

    }

}