package com.smhrd3.postmodel;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data 
@AllArgsConstructor 
@NoArgsConstructor 

public class PostDTO {
	
	private String post_Title;
	private String post_Content;
	private String post_File;
	private String post_Date;
	private String post_View;
	private String post_Like;
	private String mb_Email;
	
	
}
