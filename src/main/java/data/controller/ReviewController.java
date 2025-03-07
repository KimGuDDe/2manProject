package data.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.ReviewDto;
import data.service.ReviewService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ReviewController {
	
	private final ReviewService reviewService;
	
	
	@GetMapping("/review")
	public String Review()
	{
		return "review/review";
	}
	
	@PostMapping("/review/insertHong")
	@ResponseBody
	public String insertReviewHong(@RequestBody ReviewDto reviewDto)
	{
		reviewService.insertReviewHong(reviewDto);
		return "success";
	}
	
	//수정하고 나면 jsp의 테이블 부분에 들어가도록
	@GetMapping("/review/listHong")
	@ResponseBody
	public List<ReviewDto> getReviewListHong() {
	    return reviewService.getSelectHong();
	}
	
	@PostMapping("/review/insertKim")
	@ResponseBody
	public String insertReviewKim(@RequestBody ReviewDto reviewDto)
	{
		reviewService.insertReviewKim(reviewDto);
		return "success";
	}
	
	//수정하고 나면 jsp의 테이블 부분에 들어가도록
	@GetMapping("/review/listKim")
	@ResponseBody
	public List<ReviewDto> getReviewListKim() {
	    return reviewService.getSelectKim();
	}
	
	@PostMapping("/review/insertLee")
	@ResponseBody
	public String insertReviewLee(@RequestBody ReviewDto reviewDto)
	{
		reviewService.insertReviewLee(reviewDto);
		return "success";
	}
	
	//수정하고 나면 jsp의 테이블 부분에 들어가도록
		@GetMapping("/review/listLee")
		@ResponseBody
		public List<ReviewDto> getReviewListLee() {
			return reviewService.getSelectLee();
		}
}
