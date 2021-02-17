package com.portfolio.mymall.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;


@Data
public class PageResultDTO<DTO, EN> {


    //list
    private List<DTO> dtoList;

    //total page num
    private int totalPage;

    //cur page num
    private int page;

    //list size
    private int size;

    //start, end page num
    private int start, end;

    //pre, nex
    private  boolean prev, next;

    //page num list
    private List<Integer> pageList;


    public PageResultDTO(List<EN> result, Function<EN, DTO> fn){

        dtoList = result.stream().map(fn).collect(Collectors.toList()); //Page<Entity> 형태의 DB 데이터를 DTO 리스트로 변환 (서비스에서 데이터 핸들링 하기위해)


    }

    public void InitPageResultDTO(int totalPage, int currentPage, int size){
        this.totalPage = totalPage;
        this.page = currentPage;
        this.size = size;

        int tempEnd = (int)(Math.ceil(page/10.0)) * 10;

        start = tempEnd - 9;

        prev = start > 1;

        end = totalPage > tempEnd ? tempEnd : totalPage;

        next = totalPage > tempEnd;

        pageList = IntStream.rangeClosed(start, end).boxed().collect(Collectors.toList());
    }





}
