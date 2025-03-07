package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.ReviewDto;
import data.mapper.ReviewMapper;

@Service
public class ReviewService {
	private final ReviewMapper reviewMapper;
	
	@Autowired
	public ReviewService(ReviewMapper reviewMapper)
	{
		this.reviewMapper = reviewMapper;
	}
	
	public void insertReviewHong(ReviewDto reviewDto) {
		reviewMapper.insertReviewHong(reviewDto);
	}
	public void insertReviewKim(ReviewDto reviewDto) {
		reviewMapper.insertReviewKim(reviewDto);
	}
	public void insertReviewLee(ReviewDto reviewDto) {
		reviewMapper.insertReviewLee(reviewDto);
	}
	
	public List<ReviewDto> getSelectHong()
	{
		return reviewMapper.getSelectHong();
	}
	public List<ReviewDto> getSelectKim()
	{
		return reviewMapper.getSelectKim();
	}
	public List<ReviewDto> getSelectLee()
	{
		return reviewMapper.getSelectLee();
	}
}
