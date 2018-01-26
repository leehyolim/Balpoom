package com.balpoom.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.balpoom.member.MemberVO;
import com.balpoom.seller.SellerService;
import com.balpoom.seller.SellerVO;

@Controller
public class SellerController {

	@Autowired
	private SellerService sellerService;
	
	@RequestMapping("/sellerLogin.do")
	public String sellerLogin(HttpServletRequest request,MemberVO vo){
		HttpSession session = request.getSession();
		SellerVO sellerVo = new SellerVO();
		sellerVo.setS_id(vo.getM_id());
		sellerVo.setS_password(vo.getM_password());
		SellerVO loginSeller = sellerService.getSeller(sellerVo);
		session.setAttribute("authSeller", loginSeller);
		return "sellerIndex.jsp";
	}
}
