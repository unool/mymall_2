package com.portfolio.mymall.service;

import com.portfolio.mymall.domain.Board;
import com.portfolio.mymall.domain.Member;
import com.portfolio.mymall.domain.Reply;
import com.portfolio.mymall.dto.BoardDTO;
import com.portfolio.mymall.dto.PageRequestDTO;
import com.portfolio.mymall.dto.PageResultDTO;
import com.portfolio.mymall.dto.ReplyDTO;
import com.portfolio.mymall.repository.BoardRepository;
import com.portfolio.mymall.repository.ReplyRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Function;

@Transactional
public class BoardServiceImpl implements BoardService {

    Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);
    private final BoardRepository boardRepository;
    private final ReplyRepository replyRepository;


    public BoardServiceImpl(BoardRepository boardRepository, ReplyRepository replyRepository)
    {
        this.boardRepository = boardRepository;
        this.replyRepository = replyRepository;
    }

    @Override
    public Long register(BoardDTO boardDTO) {

        Board board = dtoToEntity(boardDTO);

        boardRepository.save(board);

        return board.getSeq();
    }

    @Override
    public boolean delete(Long seq) {
        boardRepository.deleteBySeq(seq);
        return false;
    }

    @Override
    public PageResultDTO<BoardDTO, Object[]> getList(PageRequestDTO pageRequestDTO) {

        Long boardCount = boardRepository.getBoardTotalCount(); //게시물 총 갯수
        Long totalPageCount = 0L; //하단에 출력할 총 페이지수
        Long firstBoardIndex = 0L;

        if(boardCount.equals(0) || pageRequestDTO.getSize() == 0)
        {
            //표시할 페이지 없음
        }
        else
        {
            //사이즈로 나눠서 나머지가 있으면 +1 하여 총 페이지수를 구함
            Long restBoard = boardCount%pageRequestDTO.getSize();
            totalPageCount = restBoard == 0 ? boardCount/pageRequestDTO.getSize() : (boardCount/pageRequestDTO.getSize()) +1;
            firstBoardIndex = Long.valueOf(pageRequestDTO.getSize()) * Long.valueOf(pageRequestDTO.getPage()-1);
            List<Object[]> list = boardRepository.getBoardWithMemberReplyAll(firstBoardIndex.intValue(), pageRequestDTO.getSize());


            Function<Object[], BoardDTO> fn = (en ->
                    entityToDTO((Board)en[0],(Member)en[1], (Long)en[2]));

            PageResultDTO<BoardDTO, Object[]> pageResultDTO = new PageResultDTO<>(list, fn);
            pageResultDTO.InitPageResultDTO(totalPageCount.intValue(),pageRequestDTO.getPage(),pageRequestDTO.getSize());
            return pageResultDTO;


        }
        return null;
    }

    @Override
    public BoardDTO read(Long seq) {
        List<Object[]> boardResult = boardRepository.findBySeq(seq); //보드와 멤버 리플라이 갯수 구하기
        if(boardResult.isEmpty())
        {
           //예외 처리
        }

        List<Object> replyResult = replyRepository.findByBoardSeq(seq);
        List<ReplyDTO> replyDTOList = new ArrayList<>();


        //사실상 필요가 없는 부분 (댓글은 ajax로 처리하므로)
        if(!replyResult.isEmpty())
        {
            int aa = replyResult.size();
            
            for(Object obj : replyResult)
            {
                //비효율적이므로 추후 수정 필요
                ReplyDTO replyDTO = replyEntityToDTO((Reply)obj);
                replyDTOList.add(replyDTO);
            }
        }


        Object[] objects = boardResult.get(0);
        BoardDTO boardDTO = entityToDTO((Board)objects[0],(Member) objects[1], (Long) objects[2]);
        boardDTO.SetReplys(replyDTOList);
        //----
        return boardDTO;
    }

    @Override
    public Long modify(BoardDTO boardDTO) {

        List<Object[]> result = boardRepository.findBySeq(boardDTO.getSeq());

        if(result.isEmpty())
        {
            //예외처리
        }

        Object[] objects = result.get(0);
        Board board = (Board)objects[0];
        board.setContent(boardDTO.getContent());

        return boardDTO.getSeq();
    }

    //    @Override
//    public PageResultDTO<BoardDTO> getList(PageRequestDTO pageRequestDTO)
//    {
//        getDTOList(pageRequestDTO);
//        return null;
//
//    }

//    public PageResultDTO<BoardDTO> getDTOList(PageRequestDTO pageRequestDTO){
//
//        Long boardCount = boardRepository.getBoardTotalCount(); //게시물 총 갯수
//        Long pageCount = 0L; //하단에 출력할 총 페이지수
//        Long firstBoardIndex = 0L;
//
//        if(boardCount.equals(0) || pageRequestDTO.getSize() == 0)
//        {
//            //표시할 페이지 없음
//        }
//        else
//        {
//            Long restBoard = boardCount%pageRequestDTO.getSize();
//            pageCount = restBoard == 0 ? boardCount/pageRequestDTO.getSize() : (boardCount/pageRequestDTO.getSize()) +1;
//            firstBoardIndex = Long.valueOf(pageRequestDTO.getSize()) * Long.valueOf(pageRequestDTO.getPage()-1);
//
//        }
//
//
//
//        Object object = boardRepository.getBoardWithMemberReplyAll(0,20); //전체 가져오기
//
//        if(object.equals(null))
//        {
//
//        }
//        else
//        {
//
//
//        }
//
//        return null;
//    }
}
