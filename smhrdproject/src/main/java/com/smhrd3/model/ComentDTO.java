package com.smhrd3.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data 
@AllArgsConstructor 
@NoArgsConstructor 

public class ComentDTO {
	
	private String cmt_Content;
	private String cmt_Date;
	private String cmt_View;
	private String cmt_Likes;
	
}
