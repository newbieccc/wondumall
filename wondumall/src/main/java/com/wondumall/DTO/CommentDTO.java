package com..DTO;

import lombok.Data;

@Data
public class CommentDTO {
	private int c_no, u_no, b_no;
	private String c_comment, c_date;
}
