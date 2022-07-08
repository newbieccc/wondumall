package com..Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com..DAO.PaymentDAO;

@Service
public class PaymentService {
	
	@Autowired PaymentDAO paymentDAO;
}
