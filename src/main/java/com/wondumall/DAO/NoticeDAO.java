package com..DAO;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {
	@Autowired private SqlSession sqlSession;

	public int getCount() {
		return sqlSession.selectOne("notice.getCount");
	}

	public Object getNoticeList(Map<String, Object> map) {
		return sqlSession.selectList("notice.getNoticeList", map);
	}
}
