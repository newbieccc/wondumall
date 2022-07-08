package com..DAO;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired private SqlSession sqlSession;

	public int getCount() {
		return sqlSession.selectOne("board.getCount");
	}

	public Object getBoardList(Map<String, Object> map) {
		return sqlSession.selectList("board.getBoardList", map);
	}
}
