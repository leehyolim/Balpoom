package com.balpoom.board_inquery;

import java.util.List;



public interface BoardService {

	void insertBoard(BoardVO vo);
	
	void updateBoard(BoardVO vo);
	
	void deleteBoard(BoardVO vo);
	
	void getUpdateBoard(BoardVO vo);
	
	void updateCnt(BoardVO vo);
	
	BoardVO getBoard(BoardVO vo);
	
	List<BoardVO> getBoardList(BoardVO vo);
}
