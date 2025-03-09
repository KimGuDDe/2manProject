package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.IBoardFileDto;
import data.mapper.IBoardFileMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class IBoardFileService {	
	
	@Autowired
    private IBoardFileMapper fileMapper;

    public void insertBoardFile(IBoardFileDto dto) {
        fileMapper.insertBoardFile(dto);
    }

    public List<IBoardFileDto> getFiles(int idx) {
        return fileMapper.getFiles(idx);
    }

    public void deleteFile(int num) {
        fileMapper.deleteFile(num);
    }
}
