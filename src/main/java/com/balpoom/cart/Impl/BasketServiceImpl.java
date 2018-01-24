package com.balpoom.cart.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.cart.BasketService;
import com.balpoom.cart.BasketVO;

@Service("basketService")
public class BasketServiceImpl implements BasketService{
	
	@Autowired
	private BasketDAO basketDAO;
	
	@Override
	public void addBasket(BasketVO vo) {
		
	}

	@Override
	public void deleteBasket(BasketVO vo) {
		basketDAO.deleteBasket(vo);
	}

	@Override
	public List<BasketVO> getBasketList(BasketVO vo) {
		return basketDAO.getBasketList(vo);
	}	
}
