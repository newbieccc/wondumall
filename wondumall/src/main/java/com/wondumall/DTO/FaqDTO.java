package com..DTO;

import lombok.Data;

@Data
public class FaqDTO {
	private int faq_no, u_no;
	private String faq_question, faq_answer, faq_date;
}
