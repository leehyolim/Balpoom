package com.balpoom.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.product.OverallProductVO;
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
	
	@RequestMapping("getOveralls.do")
	public ModelAndView getOveralls(@RequestParam String p_type){
		ModelAndView mav = new ModelAndView();
		OverallProductVO vo = new OverallProductVO();
		vo.setP_type(p_type);
		List<OverallProductVO> overall = productService.getOveralls(vo);
		mav.addObject("overall", overall);
		mav.setViewName("productList.jsp");
		return mav;
	}
	
	@RequestMapping("getOverallsDetails.do")
	public ModelAndView getOverallsDetails(@RequestParam String p_type, @RequestParam String p_type_detail){
		ModelAndView mav = new ModelAndView();
		OverallProductVO vo = new OverallProductVO();
		vo.setP_type(p_type);
		vo.setP_type_detail(p_type_detail);
		List<OverallProductVO> overall = productService.getOverallsDetails(vo);
		mav.addObject("overall",overall);
		mav.setViewName("productList.jsp");
		return mav;
	}
	
}
