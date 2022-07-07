package com..DTO;

import lombok.Data;

@Data
public class BoardDTO {
	private int b_no, cate_no, u_no, b_count, b_like, b_del;
	private String b_title, b_content, b_date;
}
