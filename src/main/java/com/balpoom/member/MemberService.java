package com.balpoom.member;


public interface MemberService {

	public MemberVO getMember(MemberVO vo);
	
	public void insertMember(MemberVO vo);
	
	public void updateMember(MemberVO vo);
	
	public void deleteMember(MemberVO vo);
	
	public void verifyMember(MemberVO vo);
	
	public int checkDuplicate(MemberVO vo);
}
