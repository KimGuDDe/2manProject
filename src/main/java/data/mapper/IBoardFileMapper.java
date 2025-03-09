package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.IBoardFileDto;

@Mapper
public interface IBoardFileMapper {
	void insertBoardFile(IBoardFileDto dto);

    List<IBoardFileDto> getFiles(int idx);

    void deleteFile(int num);

    IBoardFileDto getFileByNum(int num);
}
