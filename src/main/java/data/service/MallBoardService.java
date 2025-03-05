package data.service;

import java.util.List;

import org.springframework.stereotype.Service;

import data.dto.MallBoardDto;
import data.mapper.MallBoardMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MallBoardService {
	MallBoardMapper mallBoardMapper;
	
	public List<MallBoardDto> getList()
	{
		return mallBoardMapper.getList();
	}
}
