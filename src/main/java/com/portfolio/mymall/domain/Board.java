package com.portfolio.mymall.domain;

import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Setter

@Getter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "board")
public class Board extends Base_Entity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long seq;

    private String title;

    private String  content;


    @JoinColumn(name="writer_id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Member writer_id;

}
