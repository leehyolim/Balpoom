package com.balpoom.product.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.balpoom.product.OverallProductVO;
import com.balpoom.product.ProductService;
import com.balpoom.product.ProductVO;
import com.balpoom.product.RegisterVO;

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

	@Override
	public void insertProduct(ProductVO pvo) {
		productDAO.insertProduct(pvo);
	}

	@Override
	public void insertRegister(RegisterVO rvo) {
		productDAO.insertRegister(rvo);
	}

	@Override
	public RegisterVO getRegister(RegisterVO rvo) {
		return productDAO.getRegister(rvo);
	}

	@Override
	public List<OverallProductVO> getBests(OverallProductVO vo) {
		return productDAO.getBests(vo);
	}

	@Override
	public List<OverallProductVO> doFitple(OverallProductVO vo) {
		return productDAO.doFitple(vo);
	}



	
}
