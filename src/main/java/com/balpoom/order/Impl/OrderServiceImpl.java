package com.balpoom.order.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.order.OrderService;
import com.balpoom.order.OrderVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public void addOrder(OrderVO vo) {
		orderDAO.addOrder(vo);
	}
	
}
