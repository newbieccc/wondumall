package com..Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com..DTO.ProductDTO;
import com..Service.CategoryService;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = "/category")
	public ModelAndView category() {
		ModelAndView mv = new ModelAndView("category");
		
		List<ProductDTO> productList = categoryService.productList();
		
		mv.addObject("productList", productList);
		return mv;
	}
}
