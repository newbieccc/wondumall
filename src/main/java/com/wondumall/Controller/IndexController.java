package com..Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
	
	@GetMapping(value = "/")
	public String index() {
		return "index";
	}
	
	@GetMapping(value = "/blank.do")
	public String blank() {
		return "blank";
	}
	
	@GetMapping(value = "/checkout.do")
	public String checkout() {
		return "checkout";
	}
	
	@GetMapping(value = "/product.do")
	public String product() {
		return "product";
	}
	
	@GetMapping(value = "/store.do")
	public String store() {
		return "store";
	}
}
