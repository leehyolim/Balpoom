package com.balpoom.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.balpoom.review.ReviewService;
import com.balpoom.review.ReviewVO;
import com.balpoom.review.Impl.ReviewDAO;


@Controller
@SessionAttributes("Review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/deleteReview.do")
	public String deleteReview(ReviewVO vo){
		
		reviewService.deleteReview(vo);
		
		System.out.println(vo.toString());
		
		return "getReviewList.do";
	}
	
	@RequestMapping("/updateReview.do")
	public String updateReview(ReviewVO vo){
		
		reviewService.updateReview(vo);
		
		return "getReview.do";
	}
	
	@RequestMapping("/insertReview.do")
	public String insertReview(ReviewVO vo){
		
		reviewService.insertReview(vo);
		
		return "getReviewList.do";
	}
	
	@RequestMapping("/getReview.do")
	public String getReview(ReviewVO vo, Model model){
		
		model.addAttribute("Review", reviewService.getReview(vo));
		
		return "getReview.jsp";
	}
	
	@RequestMapping("/getReviewList.do")
	public String getReviewList(ReviewVO vo, ReviewDAO reviewDAO, Model model){
		System.out.println(vo.toString());
		
		model.addAttribute("getReviewList", reviewService.getReviewList(vo));
		
		System.out.println(vo.toString());
				
		return "getReviewList.jsp";
		
	}
}
