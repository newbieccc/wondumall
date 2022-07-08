package com..Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com..DTO.CategoryDTO;
import com..DTO.LoginDTO;
import com..DTO.ProductDTO;
import com..Service.ProductService;
import com..Util.Util;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private Util util;
	
	//제품 종류별 카테고리 분류하기
	@RequestMapping(value = "/category")
	public ModelAndView category(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("category");
		
		//물품마다 카테고리로 분류하기 위한 cate_no;
		int cate_no = 1;
		if((request.getParameter("cate_no")) != null) {
			cate_no = util.str2Int(request.getParameter("cate_no"));
		}
		
		//CategoryDTO에서 cate_no 값 가져오기
		CategoryDTO dto = new CategoryDTO();
		dto.setCate_no(cate_no);
		
		//물품리스트를 List에 담아서 jsp에 반환
		List<ProductDTO> productList = productService.productList(dto);
		
		mv.addObject("productList", productList);
		mv.addObject("cate_no",cate_no);
		return mv;
	}
	
	
	
	@PostMapping(value = "/nav")
	public ModelAndView productAdd(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		LoginDTO dto = new LoginDTO();
		
		if(session.getAttribute("u_email") != null) {
			
		}
		
		ModelAndView mv = new ModelAndView("nav");
		
		return mv;
	}
}
