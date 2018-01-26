package com.balpoom.product.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.product.OverallProductVO;
import com.balpoom.product.ProductService;
import com.balpoom.product.ProductVO;

@Service("ProductService")
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<ProductVO> getProduct(ProductVO pvo){
		return productDAO.getProduct(pvo);
	}

	@Override
	public ProductVO getProductGB(ProductVO pvo) {
		return productDAO.getProductGB(pvo);
	}

	@Override
	public List<ProductVO> getProductC(ProductVO pvo) {
		return productDAO.getProductC(pvo);
	}

	@Override
	public List<ProductVO> getProductS(ProductVO pvo) {
		return productDAO.getProductS(pvo);
	}

	@Override
	public List<OverallProductVO> getOveralls(OverallProductVO vo) {
		return productDAO.getOveralls(vo);
	}

	@Override
	public List<OverallProductVO> getOverallsDetails(OverallProductVO vo) {
		return productDAO.getOverallsDetails(vo);
	}



	
}
