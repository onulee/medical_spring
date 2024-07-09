package com.java.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder             // 부분생성자
@AllArgsConstructor  // 전체생성자
@NoArgsConstructor   // 기본생성자
@Data                //getter,setter
public class Member {
	
	private String id;
	private String pw;
	private String name;
	private String phone;

}
