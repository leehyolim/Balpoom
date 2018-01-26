package com.balpoom.view;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.cart.BasketVO;
import com.balpoom.order.OrderService;
import com.balpoom.order.OrderVO;

@Controller
@SessionAttributes("order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/addOrder.do")
	public String addOrder(OrderVO vo, Model model) {
		if(vo.getSender_name() == null || vo.getSender_name().equals("")) {
			throw new NullPointerException("주문자 이름을 입력하세요.");
		}
		if(vo.getSender_email_id() == null || vo.getSender_email_domain() == null ||
				vo.getSender_email_id().equals("")|| vo.getSender_email_domain().equals("")) {
			throw new NullPointerException("이메일을 올바르게 입력해주세요.");
		}
		if(vo.getSender_cellphone1()==null || vo.getSender_cellphone2()==null|| vo.getSender_cellphone3()==null||
				vo.getSender_cellphone1().equals("")||vo.getSender_cellphone2().equals("")||vo.getSender_cellphone3().equals("")) {
			throw new NullPointerException("주문자 정보의 연락처를 올바르게 입력해주세요.");
		}
		if(vo.getReceiver_address_postcode()==null || vo.getReceiver_address_primary()==null || vo.getReceiver_address_detail()==null||
				vo.getReceiver_address_postcode().equals("")|| vo.getReceiver_address_primary().equals("")||vo.getReceiver_address_detail().equals("")) {
			throw new NullPointerException("수령자의 주소를 올바르게 입력해주세요.");
		}
		if(vo.getReceiver_name()==null|| vo.getReceiver_name().equals("")) {
			throw new NullPointerException("받는 사람의 이름을 입력하세요.");
		}
		if(vo.getReceiver_cellphone1()==null|| vo.getReceiver_cellphone2()==null|| vo.getReceiver_cellphone3()==null||
				vo.getReceiver_cellphone1().equals("")|| vo.getReceiver_cellphone2().equals("")|| vo.getReceiver_cellphone3().equals("")) {
			throw new NullPointerException("받는 사람의 연락처를 입력하세요.");
		}
		
		orderService.addOrder(vo);
		return "orderSuccess.jsp";
	}
	
	/*@RequestMapping("/orderForm.do")
	public String basketlist(@RequestParam(value="basketList",required=false)String list, Model model) {
		model.addAttribute("basketList",list);
		
		System.out.println("결제 : " + list);
		
		return "orderForm.jsp";
	}*/
}