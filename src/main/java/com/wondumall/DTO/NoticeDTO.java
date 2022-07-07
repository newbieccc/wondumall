package com..DTO;

import lombok.Data;

@Data
public class NoticeDTO {
	private int n_no, n_count, n_like, u_no;
	private String n_title, n_content, n_img, n_date;
}
