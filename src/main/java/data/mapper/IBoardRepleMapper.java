package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.IBoardRepleDto;

@Mapper
public interface IBoardRepleMapper {
	void insertReple(IBoardRepleDto dto);

    List<IBoardRepleDto> getReples(int idx);

    IBoardRepleDto getRepleByNum(int num);

    void deleteReple(int num);

    void updateReple(IBoardRepleDto dto);
}
