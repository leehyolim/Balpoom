package com.balpoom.product;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ProductService {

	List<ProductVO> getProduct(ProductVO pvo);
	ProductVO getProductGB(ProductVO pvo);
	List<ProductVO> getProductC(ProductVO pvo);
	List<ProductVO> getProductS(ProductVO pvo);
	
	List<OverallProductVO> getOveralls(OverallProductVO vo);
	List<OverallProductVO> getOverallsDetails(OverallProductVO vo);
	
	void insertProduct(ProductVO pvo);	
	void insertRegister(RegisterVO rvo);
	RegisterVO getRegister(RegisterVO rvo);

}
