package com..Service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com..DAO.BoardDAO;

@Service
public class BoardService {
	@Autowired private BoardDAO BoardDAO;

	public int getCount() {
		return BoardDAO.getCount();
	}

	public Object getBoardList(Map<String, Object> map) {
		return BoardDAO.getBoardList(map);
	}
	
	
}
