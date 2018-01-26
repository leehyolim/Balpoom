package com.balpoom.seller.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.seller.SellerService;
import com.balpoom.seller.SellerVO;

@Service("sellerService")
public class SellerServiceImpl implements SellerService {
	
	@Autowired
	private SellerDAO sellerDAO;

	@Override
	public SellerVO getSeller(SellerVO vo) {
		return sellerDAO.getSeller(vo);
	}

}
