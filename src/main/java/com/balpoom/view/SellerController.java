package com.balpoom.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.balpoom.member.MemberVO;
import com.balpoom.seller.SellerService;
import com.balpoom.seller.SellerVO;

@Controller
public class SellerController {

	@Autowired
	private SellerService sellerService;
	
	@RequestMapping("/sellerLogin.do")
	public ModelAndView sellerLogin(HttpServletRequest request,MemberVO vo){
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		SellerVO sellerVo = new SellerVO();
		sellerVo.setS_id(vo.getM_id());
		sellerVo.setS_password(vo.getM_password());
		SellerVO loginSeller = sellerService.getSeller(sellerVo);
		if (loginSeller != null) {
			session.setAttribute("authSeller", loginSeller);
			mav.setViewName("sellerIndex.jsp");
			return mav;
		}else{
			mav.setViewName("login.jsp");
			mav.addObject("notExist", true);
			return mav;
		}
		
	}
}
