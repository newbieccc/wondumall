package com..Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com..DAO.PaymentDAO;
import com..DTO.OrderDTO;

@Service
public class PaymentService {
	
	@Autowired PaymentDAO paymentDAO;

	public int checkout(OrderDTO orderInfo) {
		
		return paymentDAO.checkout(orderInfo);
	}


}
