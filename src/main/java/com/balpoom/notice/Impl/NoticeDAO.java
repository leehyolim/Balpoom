package com.balpoom.notice.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.balpoom.notice.NoticeVO;

@Repository
public class NoticeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertNotice(NoticeVO vo){
		mybatis.insert("NoticeDAO.insertNotice",vo);		
	}
	public void updateNotice(NoticeVO vo){
		mybatis.update("NoticeDAO.updateNotice", vo);
	}
	public void deleteNotice(NoticeVO vo){
		mybatis.delete("NoticeDAO.deleteNotice",vo);
	}
	public NoticeVO getNotice(NoticeVO vo){
		return (NoticeVO)mybatis.selectOne("NoticeDAO.getNotice",vo);
	}
	public List<NoticeVO> getNoticeList(NoticeVO vo){
		return mybatis.selectList("NoticeDAO.getNoticeList",vo);
	}
	public void updateCnt(NoticeVO vo){
		mybatis.update("NoticeDAO.updateCnt",vo);
	}
}
