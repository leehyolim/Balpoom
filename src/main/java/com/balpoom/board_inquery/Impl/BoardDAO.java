package com.balpoom.board_inquery.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.board_inquery.BoardVO;



@Repository
public class BoardDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 글 등록
	public void insertBoard(BoardVO vo) {
		System.out.println("---> JDBC로 insertBoard() 기능 처리");
		
		mybatis.insert("BoardDAO.insertBoard", vo);
	}
	
	//글 수정 조회
	public BoardVO getUpdateBoard(BoardVO vo){
		System.out.println("---> JDBC로 getUpdateBoard() 기능 처리");
		
		return (BoardVO) mybatis.selectOne("BoardDAO.getUpdateBoard", vo);
	}
	
	// 글 수정
	public void updateBoard(BoardVO vo) {
		System.out.println("---> JDBC로 updateBoard() 기능 처리");
			
		mybatis.update("BoardDAO.updateBoard", vo);
	}
	
	// 글 삭제
	public void deleteBoard(BoardVO vo) {
		System.out.println("---> JDBC로 deleteBoard() 기능 처리");

		mybatis.delete("BoardDAO.deleteBoard", vo);
	}
		
	// 글 상세 조회
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("---> JDBC로 getBoard() 기능 처리");
			
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}
		
	// 글 목록 조회
	public List<BoardVO> getBoardList(BoardVO vo) {
			
		System.out.println("---> JDBC로 getBoardList() 기능 처리");
			
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
	
	//조회수
	public void updateCnt(BoardVO vo){
		mybatis.update("BoardDAO.updateCnt", vo);
	} 
}
