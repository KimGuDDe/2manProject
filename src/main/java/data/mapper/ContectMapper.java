package data.mapper;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ContectDto;

@Mapper
public interface ContectMapper {
	public void insertContect(ContectDto contectDto);
}
