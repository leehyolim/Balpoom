package com.balpoom.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.notice.NoticeService;
import com.balpoom.notice.NoticeVO;

@Controller
@SessionAttributes("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;

	@RequestMapping("/insertNotice.do")
	public String insertNotice(NoticeVO vo) {
		if (vo.getNotice_title() == null || vo.getNotice_title().equals("")) {
			throw new NullPointerException("제목을 입력하세요");
		}
		noticeService.insertNotice(vo);
		return "getNoticeList.do";
	}

	@RequestMapping("/updateNotice.do")
	public String updateNotice(@ModelAttribute("notice") NoticeVO vo) {

		System.out.println("번호 : " + vo.getNotice_no());
		System.out.println("제목 : " + vo.getNotice_title());
		System.out.println("내용 : " + vo.getNotice_content());
		System.out.println("등록일 : " + vo.getNotice_reg());
		System.out.println("조회수 : " + vo.getNotice_cnt());
		noticeService.updateNotice(vo);
		return "getNotice.jsp";
	}

	@RequestMapping("/deleteNotice.do")
	public String deleteNotice(NoticeVO vo) {
		noticeService.deleteNotice(vo);
		System.out.println();
		return "getNoticeList.do";
	}

	@RequestMapping("/getNotice.do")
	public String getNotice(NoticeVO vo, Model model) {
		noticeService.updateCnt(vo);
		System.out.println(vo.getNotice_cnt());
		model.addAttribute("notice", noticeService.getNotice(vo));			
		return "getNotice.jsp";
	}

	@RequestMapping("/getNoticeList.do")
	public String getNoticeList(NoticeVO vo, Model model) {
		model.addAttribute("noticeList", noticeService.getNoticeList(vo));
		System.out.println(noticeService.getNoticeList(vo));
		return "getNoticeList.jsp";
	}
	
		
	
}
