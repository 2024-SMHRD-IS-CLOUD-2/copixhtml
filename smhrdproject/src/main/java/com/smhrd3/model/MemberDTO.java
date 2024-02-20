package com.smhrd3.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// lombok 라이브러리 : Class의 기본 메소드(생성자, getter/setter) 자동완성

@Data // 기본 메소드 자동완성(getter, setter, toString)
@AllArgsConstructor // 모든 필드르 초기화하는 생성자 자동완성
@NoArgsConstructor // 기본 생성자 : 기본 생성자는 반드시 있어야 한다.


public class MemberDTO {
	
	private String mb_Id;
	private String mb_Email;
	private String mb_Pw;
	private String mb_Nickname;
	private String mb_Gender;
	private String mb_Birth;
	private String mb_Pwcheck;
	private String mb_Profile;
		
}
