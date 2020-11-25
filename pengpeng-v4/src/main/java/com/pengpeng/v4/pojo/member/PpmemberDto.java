package com.pengpeng.v4.pojo.member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class PpmemberDto {
    private String sex;
    private String nickName;
    private Integer ageMin;
    private Integer ageMax;
    private Integer rangMin;
    private Integer rangMax;
    private String address;
    private Double longitude;
    private Double latitude;
    private String emotionStatus;
    private String attribute;
}
