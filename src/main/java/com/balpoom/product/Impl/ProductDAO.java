package com.balpoom.product.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.product.OverallProductVO;
import com.balpoom.product.ProductVO;
import com.balpoom.product.RegisterVO;

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
	
	public List<OverallProductVO> getOveralls(OverallProductVO vo){
		System.out.println(vo.getP_type()+"들 가져오기");
		return mybatis.selectList("ProductDAO.getOveralls",vo);
	}
	
	public List<OverallProductVO> getOverallsDetails(OverallProductVO vo){
		System.out.println(vo.getP_type_detail()+"들 가져오기");
		return mybatis.selectList("ProductDAO.getOverallsDetails",vo);
	}
	
	public void insertProduct(ProductVO pvo){
		mybatis.insert("ProductDAO.insertProduct",pvo);
	}
	
	public void insertRegister(RegisterVO rvo){
		mybatis.insert("ProductDAO.insertRegister",rvo);
	}
	
	public RegisterVO getRegister(RegisterVO rvo){
		return (RegisterVO)mybatis.selectOne("ProductDAO.getRegister",rvo);
	}

}
