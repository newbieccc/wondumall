package com..DTO;

import lombok.Data;

@Data
public class QuestionDTO {
	private int q_no, u_no;
	private String q_title, q_content, q_img, q_date;
}
