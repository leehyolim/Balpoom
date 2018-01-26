package com.balpoom.order.Impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.order.OrderVO;

@Repository
public class OrderDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void addOrder(OrderVO vo) {
		mybatis.insert("OrderDAO.addOrder",vo);
	}
	
}
