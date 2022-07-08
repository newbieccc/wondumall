package com..Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com..DAO.CategoryDAO;
import com..DTO.CategoryDTO;
import com..DTO.ProductDTO;

@Service
public class CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;

	public List<ProductDTO> productList(CategoryDTO dto) {
		return categoryDAO.productList(dto);
	}

}
