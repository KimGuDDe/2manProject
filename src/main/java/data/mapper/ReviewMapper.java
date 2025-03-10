package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapper {
	public void insertReviewHong(ReviewDto reviewDto);
	public void insertReviewKim(ReviewDto reviewDto);
	public void insertReviewLee(ReviewDto reviewDto);
	public List<ReviewDto> getSelectHong();
	public List<ReviewDto> getSelectKim();
	public List<ReviewDto> getSelectLee();
	public List<ReviewDto> getReviewList();
}
