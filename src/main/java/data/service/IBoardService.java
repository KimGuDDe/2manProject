package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.IBoardDto;
import data.dto.IBoardFileDto;
import data.dto.IBoardRepleDto;
import data.mapper.IBoardMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class IBoardService {    

    @Autowired
    private IBoardMapper boardMapper;

    public int getBoardTotalCnt() {
        return boardMapper.getBoardTotalCnt();
    }

    public List<IBoardDto> getBoardListWithPaging(int start, int listSize) {
        Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("listSize", listSize);
        return boardMapper.getBoardListWithPaging(map);
    }

    public void insertBoard(IBoardDto dto) {
        boardMapper.insertBoard(dto);
    }

    public IBoardDto getBoardDetail(int idx) {
        return boardMapper.getBoardDetail(idx);
    }

    public List<IBoardFileDto> getBoardFiles(int idx) {
        return boardMapper.getBoardFiles(idx);
    }

    public List<IBoardRepleDto> getRepleList(int idx) {
        return boardMapper.getRepleList(idx);
    }
}
