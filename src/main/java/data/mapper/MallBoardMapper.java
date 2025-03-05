package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MallBoardDto;

@Mapper
public interface MallBoardMapper {
	public List<MallBoardDto> getList();
}
