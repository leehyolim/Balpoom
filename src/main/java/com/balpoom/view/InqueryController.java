package com.balpoom.view;



import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.inquery.InqueryService;
import com.balpoom.inquery.InqueryVO;
import com.balpoom.inquery.Impl.InqueryDAO;

@Controller
@SessionAttributes("Inquery")
public class InqueryController {
	@Autowired
	private InqueryService InqueryService;
	Logger logger = Logger.getLogger(this.getClass());

	// 글 등록
	@RequestMapping(value = "/insertInquery.do")
	public String insertInquery(InqueryVO vo) {

		// System.out.println("글 등록 처리");
		logger.debug("[LOG] 글 등록 처리");
		System.out.println(vo.getInqu_title());
		System.out.println(vo.getM_no());
		System.out.println(vo.getInqu_content());
		InqueryService.insertInquery(vo);

		return "getInqueryList.do";
	}

	// 글 수정
	@RequestMapping(value = "/updateInquery.do")
	public String updateInquery(InqueryVO vo) {

		// System.out.println("글 수정 처리");
		logger.debug("[LOG] 글 수정 처리");

		System.out.println("번호 : " + vo.getInqu_no());
		System.out.println("제목 : " + vo.getInqu_title());
		System.out.println("작성자 : " + vo.getM_no());
		System.out.println("내용 : " + vo.getInqu_content());
		System.out.println("등록일 : " + vo.getInqu_reg());
		System.out.println("조회수 : " + vo.getInqu_cnt());
		InqueryService.updateInquery(vo);

		return "getInquery.do";
	}

	// 글 삭제
	@RequestMapping(value = "/deleteInquery.do")
	public String deleteInquery(InqueryVO vo) {

		// System.out.println("글 삭제 처리");
		logger.debug("[LOG] 글 삭제  처리");
		InqueryService.deleteInquery(vo);

		return "getInqueryList.do";
	}

	// 글 상세 조회
	@RequestMapping(value = "/getInquery.do")
	public String getInquiryInquery(InqueryVO vo, Model model) {

		// System.out.println("글 상세 조회 처리");
		logger.debug("[LOG] 글 상세 조회 처리");
		InqueryService.updateCnt(vo);

		model.addAttribute("Inquery", InqueryService.getInquery(vo));
		return "getInquery.jsp";
	}

	// 글 목록 검색
	@RequestMapping(value = "/getInqueryList.do")

	public String getInquiryInqueryList(InqueryVO vo, InqueryDAO InqueryDAO, Model model) {

		logger.debug("[LOG] 글 목록 검색");

		// NULL Check
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("TITLE");
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");

		// Model 정보 저장
		model.addAttribute("InqueryList", InqueryService.getInqueryList(vo)); // Model
																				// 정보
																				// 저장
		return "getInqueryList.jsp";
	}
	

	
}