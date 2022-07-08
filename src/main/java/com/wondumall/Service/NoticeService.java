package com..Service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com..DAO.NoticeDAO;

@Service
public class NoticeService {
	@Autowired private NoticeDAO noticeDAO;

	public int getCount() {
		return noticeDAO.getCount();
	}

	public Object getNoticeList(Map<String, Object> map) {
		return noticeDAO.getNoticeList(map);
	}
	
	
}
