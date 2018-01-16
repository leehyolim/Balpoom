package com.balpoom.member.Impl;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.member.MemberVO;

@Repository("memberDAO")
//@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// CRUD 기능의 메소드 구현
	public void insertMember(MemberVO vo) {
		System.out.println("---> mybtis로 insertBoard() 기능 처리");
		mybatis.insert("MemberDAO.insertMember",vo);
	}

	public MemberVO getMember(MemberVO vo) {
		System.out.println("---> mybatis로 getMember() 기능 처리");
		return (MemberVO) mybatis.selectOne("MemberDAO.getMember",vo);
	}
	
	public void verifyMember(MemberVO vo){
		System.out.println("---> mybatis로 verifyMember() 기능처리");
		mybatis.update("MemberDAO.verifyMember",vo);
	}

		
}
