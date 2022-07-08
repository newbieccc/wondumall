package com..Controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com..DTO.OrderDTO;
import com..Service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	
	@GetMapping(value = "/checkout.do")
	public String checkout() {
		
		

		return "checkout";
	}
	
	@PostMapping(value = "/checkout.do")
	public String checkout(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("o_name");
		String email = request.getParameter("o_email");
		String postcode = request.getParameter("o_postcode");
		String roadAddress = request.getParameter("o_roadAddress");
		String extraAddress = request.getParameter("o_extraAddress");
		String detailAddress = request.getParameter("o_detailAddress");
		String tel = request.getParameter("o_tel");
		
		OrderDTO orderInfo = new OrderDTO();
		
		orderInfo.setO_name(name);
		orderInfo.setO_email(email);
		orderInfo.setO_postcode(postcode);
		orderInfo.setO_roadAddress(roadAddress);
		orderInfo.setO_extraAddress(extraAddress);
		orderInfo.setO_detailAddress(detailAddress);
		orderInfo.setO_tel(tel);
		
		int result = paymentService.checkout(orderInfo);
		
		if(result == 1) {
			return "redirect:/paysuccess.do";
		} else {
			return "redirect:/payfailure.do";
		}
		
	}
}
