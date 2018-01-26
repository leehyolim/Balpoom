package com.balpoom.product;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface ProductService {

	List<ProductVO> getProduct(ProductVO pvo);
	ProductVO getProductGB(ProductVO pvo);
	List<ProductVO> getProductC(ProductVO pvo);
	List<ProductVO> getProductS(ProductVO pvo);
}
