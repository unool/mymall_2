package com.portfolio.mymall.domain;

import lombok.*;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;

@Getter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "member")
public class Member extends Base_Entity{

    @Id
    @Column(name = "id", unique = true)
    private String id;

    @Column(name = "pwd")
    private String password;

    private String nick;

    @Column(name = "base_address")
    private String base;

    @Column(name = "detail_address")
    private String detail;

    @Column(name = "phone_number")
    private String phone;
}
