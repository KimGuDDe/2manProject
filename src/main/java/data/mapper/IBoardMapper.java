package data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import data.dto.IBoardDto;
import data.dto.IBoardFileDto;
import data.dto.IBoardRepleDto;

@Mapper
public interface IBoardMapper {
	List<IBoardDto> getBoardListWithPaging(Map<String, Integer> map);

    int getBoardTotalCnt();

    void insertBoard(IBoardDto dto);

    void insertBoardFile(IBoardFileDto dto);

    IBoardDto getBoardDetail(int idx);

    List<IBoardFileDto> getBoardFiles(int idx);

    List<IBoardRepleDto> getRepleList(int idx);

    void insertReple(IBoardRepleDto dto);
}
