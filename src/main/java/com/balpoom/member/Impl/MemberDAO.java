package com.balpoom.member.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.balpoom.common.JDBCUtil;
import com.balpoom.member.MemberVO;

@Repository("memberDAO")
public class MemberDAO {

	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	// SQL 명령어들

	private final String MEMBER_INSERT = "insert into member(m_id,m_password,m_name,m_birth"
			+ ",m_cellphone,m_phone,m_address) "
			+ "values( ?, ?, ?, ?, ?, ?, ?)";
	private final String BOARD_UPDATE = "update board set title=?, content=? " 
			+ "where seq = ?";
	private final String BOARD_DELETE = "delete from board where seq = ?";
	private final String MEMBER_GET = "select * from member where m_id=? and m_password=?";
	private final String BOARD_LIST = "select * from board order by seq desc";
	
	// CRUD 기능의 메소드 구현
	public void insertMember(MemberVO vo) {
		System.out.println("---> JDBC로 insertBoard() 기능 처리");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(MEMBER_INSERT);
			stmt.setString(1, vo.getM_id());
			stmt.setString(2, vo.getM_password());
			stmt.setString(3, vo.getM_name());
			stmt.setString(4, vo.getM_birth());
			stmt.setString(5, vo.getM_cellphone());
			stmt.setString(6, vo.getM_phone());
			stmt.setString(7, vo.getM_address());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	/*
	public void updateMember(MemberVO vo) {
		System.out.println("---> JDBC로 updateBoard() 기능 처리");
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_UPDATE);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getContent());
			stmt.setInt(3, vo.getSeq());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
	public void deleteMember(MemberVO vo) {
		System.out.println("---> JDBC로 deleteBoard() 기능 처리");

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_DELETE);
			stmt.setInt(1, vo.getSeq());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
*/
	public MemberVO getMember(MemberVO vo) {
		System.out.println("---> JDBC로 getMember() 기능 처리");
		MemberVO member = null;
		
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(MEMBER_GET);
			System.out.println(vo.getM_id());
			System.out.println(vo.getM_password());
			stmt.setString(1, vo.getM_id());
			stmt.setString(2, vo.getM_password());
			rs = stmt.executeQuery();
			if (rs.next()) {
				member = new MemberVO();
				member.setM_no(rs.getInt("m_no"));
				member.setM_id(rs.getString("m_id"));
				member.setM_name(rs.getString("m_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}

		return member;
	}

		
}
