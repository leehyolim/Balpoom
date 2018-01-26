package com.balpoom.cart.Impl;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.cart.BasketVO;

@Repository
public class BasketDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	// 장바구니 추가
	public void addBasket(BasketVO vo) {
		System.out.println("---> mybtis로 addBasket() 기능 처리");
		mybatis.insert("BasketDAO.addBasket",vo);
	}
	
	//장바구니 삭제
	public void deleteBasket(BasketVO vo) {
		System.out.println("---> mybtis로 deleteBasket() 기능 처리");
		mybatis.delete("BasketDAO.deleteBasket", vo);
	}
	
	//장바구니 조회
	public List<BasketVO> getBasketList(BasketVO vo) {
		
		System.out.println("---> mybatis로 getBasket() 기능 처리");
		return mybatis.selectList("BasketDAO.getBasketList",vo);
	}
	
	//주문 후 장바구니 내역 삭제
	public void order_rs_cart_del(BasketVO vo) {
		System.out.println("---> mybtis로 order_rs_cart_del() 기능 처리");
		mybatis.update("BasketDAO.order_rs_cart_del", vo);
	}
}