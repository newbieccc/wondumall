package com..DTO;

import lombok.Data;

@Data
public class LoginDTO {
	private int u_no, u_confirm;
	private String u_email, u_pw, u_name, u_postcode, u_detailAddress, u_extraAddress,
					u_joindate, u_grade, u_img, u_roadAddress, u_nickname, u_provider;

}
