package com.balpoom.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.product.ProductService;
import com.balpoom.product.ProductVO;

@Controller
@SessionAttributes("Product")
	public class productController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/getProduct.do")
	public String getProduct(ProductVO pvo, Model model){
		
		model.addAttribute("ProductListGB",productService.getProductGB(pvo));
		model.addAttribute("ProductList", productService.getProduct(pvo));
		model.addAttribute("ProductListS", productService.getProductS(pvo));
		model.addAttribute("ProductListC", productService.getProductC(pvo));
		System.out.println(productService.getProductC(pvo));
		System.out.println(productService.getProductS(pvo));
		System.out.println(productService.getProduct(pvo));
		System.out.println("asdf");
		
		return "detail.jsp";
		
	}
	
	public void getProductGB(ProductVO pvo){
		productService.getProductGB(pvo);		
	}
	
	public void getProductS(ProductVO pvo){
		productService.getProductS(pvo);
	}
	
	public void getProductC(ProductVO pvo){
		productService.getProductC(pvo);
	}
	
}
