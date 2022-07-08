package com..Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com..DTO.CategoryDTO;
import com..DTO.ProductDTO;
import com..Service.CategoryService;
import com..Util.Util;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private Util util;
	
	@RequestMapping(value = "/category")
	public ModelAndView category(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("category");
		
		int cate_no = 1;
		if((request.getParameter("cate_no")) != null) {
			cate_no = util.str2Int(request.getParameter("cate_no"));
		}
		
		CategoryDTO dto = new CategoryDTO();
		dto.setCate_no(cate_no);
		
		List<ProductDTO> productList = categoryService.productList(dto);
		
		mv.addObject("productList", productList);
		mv.addObject("cate_no",cate_no);
		return mv;
	}
}
