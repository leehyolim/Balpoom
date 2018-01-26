package com.balpoom.product.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.product.ProductVO;

@Repository
public class ProductDAO {
		
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> getProduct(ProductVO pvo){
		
		System.out.println("상품 불러오기");
		return mybatis.selectList("ProductDAO.getProduct", pvo);
	}
	public ProductVO getProductGB(ProductVO pvo){
		System.out.println("상품 그룹지어서 이름이랑 프라이스만 블러온다 시뱅아");
		return mybatis.selectOne("ProductDAO.getProductGB",pvo);
	}
	
	public List<ProductVO> getProductC(ProductVO pvo){
		
		return mybatis.selectList("ProductDAO.getProductC",pvo);
		
	}
	
	public List<ProductVO> getProductS(ProductVO pvo){
		
		return mybatis.selectList("ProductDAO.getProductS",pvo);
	}
//	public void updateProduct(ProductVO vo){
//		
//		System.out.println("상품 수정");
//		mybatis.update("ProductDAO.updateProduct", vo);
//	}
//	
}
