package com.balpoom.view;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.balpoom.member.MailHandler;
import com.balpoom.member.MemberService;
import com.balpoom.member.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	@Inject
	private JavaMailSender mailSender;

	@RequestMapping("/registerMember.do")
	public String insertMember(MemberVO vo) throws MessagingException, UnsupportedEncodingException {
		memberService.insertMember(vo);
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[이메일 인증]");
		sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
				.append("<a href='http://localhost:8080/biz/verify.do?m_email_id=" + vo.getM_email_id()
						+ "&m_email_domain=" + vo.getM_email_domain())
				.append("' target='_blenk'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("balpoom@balpoom.com", "발품");
		sendMail.setTo(vo.getM_email_id() + "@" + vo.getM_email_domain());
		sendMail.send();
		return "signConfirm.jsp";
	}

	@RequestMapping(value = "/verify.do", method = RequestMethod.GET)
	public String signSuccess(@RequestParam String m_email_id, @RequestParam String m_email_domain) {
		// System.out.println(m_email_id);
		// System.out.println(m_email_domain);
		MemberVO vo = new MemberVO();
		vo.setM_email_id(m_email_id);
		vo.setM_email_domain(m_email_domain);
		memberService.verifyMember(vo);
		return "signSuccess.jsp";
	}

	@RequestMapping("/login.do")
	public String login(MemberVO vo, HttpServletRequest request) {
		System.out.println("로그인 인증 처리...");
		System.out.println(vo.getM_id().trim().substring(0, 1));
		HttpSession session = request.getSession();
		if (vo.getM_id().trim().substring(0, 1).equals("@")) {
			return "index.jsp";
		} else {
			MemberVO mem = memberService.getMember(vo);
			if (mem != null) {
				if (mem.getM_verify() == 'y') {
					session.setAttribute("authMember", mem);
					return "index.jsp";
				} else
					return "login.jsp";
			} else
				return "login.jsp";
		}
	}

	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("로그아웃 처리");

		// 1. 브라우저와 연결된 세션 객체를 강제로 종료한다.
		HttpSession session = request.getSession();
		session.invalidate();

		return "index.jsp";

	}

	@ResponseBody
	@RequestMapping(value = "/duplicate.do", method = RequestMethod.POST)
	public String checkDuplicate(HttpServletRequest request) {
		String m_id = request.getParameter("m_id");
		MemberVO vo = new MemberVO();
		vo.setM_id(m_id);
		int rowcount = memberService.checkDuplicate(vo);
		System.out.println(rowcount);
		return String.valueOf(rowcount);
	}

}
