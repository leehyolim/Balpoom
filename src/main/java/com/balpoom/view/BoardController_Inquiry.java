package com.balpoom.view;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.board_inquery.BoardService;
import com.balpoom.board_inquery.BoardVO;
import com.balpoom.board_inquery.Impl.BoardDAO;

@Controller
@SessionAttributes("board")
public class BoardController_Inquiry {
	@Autowired
	private BoardService boardService;
	Logger logger = Logger.getLogger(this.getClass());

	// 글 등록
	@RequestMapping(value = "/insertBoard.do")
	public String insertBoard(BoardVO vo) {

		// System.out.println("글 등록 처리");
		logger.debug("[LOG] 글 등록 처리");
		System.out.println(vo.getInqu_title());
		System.out.println(vo.getM_no());
		System.out.println(vo.getInqu_content());
		boardService.insertBoard(vo);

		return "getBoardList.do";
	}
	//글 수정 조회
	@RequestMapping(value = "getUpdateBoard.do")
	public String getUpdateBoard(BoardVO vo, BoardDAO boardDAO, Model model) {

		// System.out.println("글 수정 처리");
		logger.debug("[LOG] 글 수정 조회 처리");
		
		
		return "updateBoard_Inquiry.jsp";
	}

	// 글 수정
	@RequestMapping(value = "updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo, BoardDAO boardDAO) {

		// System.out.println("글 수정 처리");
		logger.debug("[LOG] 글 수정 처리");

		System.out.println("번호 : " + vo.getInqu_no());
		System.out.println("제목 : " + vo.getInqu_title());
		System.out.println("작성자 : " + vo.getM_no());
		System.out.println("내용 : " + vo.getInqu_content());
		System.out.println("등록일 : " + vo.getInqu_reg());
		System.out.println("조회수 : " + vo.getInqu_cnt());
		boardService.updateBoard(vo);

		return "getBoard_Inquiry.jsp";
	}

	// 글 삭제
	@RequestMapping(value = "deleteBoard.do")
	public String deleteBoard(BoardVO vo) {

		// System.out.println("글 삭제 처리");
		logger.debug("[LOG] 글 삭제  처리");
		boardService.deleteBoard(vo);

		return "getBoardList.do";
	}

	// 검색 조건 목록 설정
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		return conditionMap;
	}

	// 글 상세 조회
	@RequestMapping(value = "/getBoard.do")
	public String getInquiryBoard(BoardVO vo, Model model) {

		// System.out.println("글 상세 조회 처리");
		logger.debug("[LOG] 글 상세 조회 처리");
		boardService.updateCnt(vo);

		// 검색 결과를 세션에 저장하고 목록 화면으로 이동한다.
		model.addAttribute("board", boardService.getBoard(vo));
		System.out.println(boardService.getBoard(vo).toString());
		return "getBoard_Inquiry.jsp";
	}

	// 글 목록 검색
	@RequestMapping(value = "getBoardList.do")

	public String getInquiryBoardList(BoardVO vo, BoardDAO boardDAO, Model model) {

		logger.debug("[LOG] 글 목록 검색");

		// NULL Check
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("TITLE");
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");

		// Model 정보 저장
		model.addAttribute("boardList", boardService.getBoardList(vo)); // Model
																				// 정보
																				// 저장
		return "getBoardList_Inquiry.jsp";
	}
	

	
}
