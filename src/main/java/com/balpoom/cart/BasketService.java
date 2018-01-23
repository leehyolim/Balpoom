package com.balpoom.cart;

import java.util.List;

import org.springframework.stereotype.Service;

@Service("basketService")
public interface BasketService {
	
	void addBasket(BasketVO vo);
	
	void deleteBasket(BasketVO vo);
	
	List<BasketVO> getBasketList(BasketVO vo);
	
}
