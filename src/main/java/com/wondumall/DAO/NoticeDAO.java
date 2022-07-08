package com..DAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com..DTO.NoticeDTO;

@Repository
public class NoticeDAO {
	@Autowired private SqlSession sqlSession;

	public int getCount() {
		return sqlSession.selectOne("notice.getCount");
	}

	public List<NoticeDTO> getNoticeList(Map<String, Object> map) {
		return sqlSession.selectList("notice.getNoticeList", map);
	}

	public NoticeDTO getDetail(int n_no) {
		return sqlSession.selectOne("notice.getDetail", n_no);
	}
}