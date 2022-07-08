package com..Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com..Service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@GetMapping(value = "/payment.do")
	public String payment() {
		
		return "payment";
	}
	
	@GetMapping(value = "/checkout.do")
	public String checkout() {
		
		return "checkout";
	}
}
