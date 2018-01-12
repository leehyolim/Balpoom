package com.balpoom.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.balpoom.member.MemberService;
import com.balpoom.member.MemberVO;

@Controller
public class MemberController {

	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/registerMember.do")
	public String insertMember(MemberVO vo) {
		memberService.insertMember(vo);
		return "result.jsp";
	}
	
	@RequestMapping("/login.do")
	public String login(MemberVO vo, HttpSession session){
		System.out.println("로그인 인증 처리...");
		MemberVO mem = memberService.getMember(vo);
		if(mem != null){
			session.setAttribute("userNo", mem.getM_no());
			session.setAttribute("userId", mem.getM_id());
			session.setAttribute("userName", mem.getM_name());
			return "result.jsp";
		}
		else return "login.jsp";
	}
}
