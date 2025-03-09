package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ContectDto;

@Mapper
public interface ContectMapper {
	public void insertContect(ContectDto contectDto);
	public List<ContectDto> getSelectContect();
}
