package com..DAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com..DTO.OrderDTO;

@Component
public class PaymentDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public int checkout(OrderDTO orderInfo) {
		
		return sqlSession.insert("payment.checkout", orderInfo);
	}


}
