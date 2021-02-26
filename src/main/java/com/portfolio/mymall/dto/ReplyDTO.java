package com.portfolio.mymall.dto;


import lombok.*;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReplyDTO {

    private Long seq;

    private Long board_seq;

    private String content;

    private String replyer;

    private LocalDateTime regDate;

    private LocalDateTime modDate;

}
