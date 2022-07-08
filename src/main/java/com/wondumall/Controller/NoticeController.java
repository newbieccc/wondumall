package com..Controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com..Service.NoticeService;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class NoticeController {
	@Autowired NoticeService noticeService;
	
	@GetMapping("/notice.do")
	public ModelAndView notice(@RequestParam(name = "pageNo", required = false, defaultValue = "1") int pageNo) {
		ModelAndView mv = new ModelAndView("notice");
		
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(pageNo); //현재 페이지 번호
		paginationInfo.setRecordCountPerPage(10); //한 페이지에 게시되는 게시물 건수
		paginationInfo.setPageSize(10); //페이징 리스트의 사이즈
		paginationInfo.setTotalRecordCount(noticeService.getCount());
		
		Map<String, Object> map = new HashMap<>();
		map.put("firstIndex", paginationInfo.getFirstRecordIndex());
		map.put("recordCountPerPage", paginationInfo.getRecordCountPerPage());
		
		mv.addObject("noticeList", noticeService.getNoticeList(map));
		mv.addObject("paginationInfo", paginationInfo);
		return mv;
	}
}
