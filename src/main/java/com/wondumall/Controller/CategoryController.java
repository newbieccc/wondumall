package com..Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com..DTO.CategoryDTO;
import com..Service.CategoryService;

@Controller
public class CategoryController {
	@Autowired private CategoryService categoryService;
	
	@ResponseBody
	@GetMapping("/categoryList.do")
	public List<CategoryDTO> getCategoryList(){
		return categoryService.getCategoryList();
	}
}
