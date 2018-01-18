package com.balpoom.notice;

import java.util.List;

import org.springframework.stereotype.Service;

@Service("noticeService")
public interface NoticeService {
	void insertNotice(NoticeVO vo);

	void updateNotice(NoticeVO vo);

	void deleteNotice(NoticeVO vo);

	NoticeVO getNotice(NoticeVO vo);

	List<NoticeVO> getNoticeList(NoticeVO vo);
	
	void updateCnt(NoticeVO vo);
}
