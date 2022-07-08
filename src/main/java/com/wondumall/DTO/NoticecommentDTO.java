package com..DTO;

import lombok.Data;

@Data
public class NoticecommentDTO {
	private int nc_no, u_no, n_no;
	private String nc_comment, nc_date, u_nickname;
}
