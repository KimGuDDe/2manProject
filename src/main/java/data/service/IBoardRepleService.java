package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.IBoardRepleDto;
import data.mapper.IBoardRepleMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class IBoardRepleService {
	
	@Autowired
    private IBoardRepleMapper repleMapper;

    public void insertReple(IBoardRepleDto dto) {
        repleMapper.insertReple(dto);
    }

    public List<IBoardRepleDto> getReples(int idx) {
        return repleMapper.getReples(idx);
    }

    public void deleteReple(int num) {
        repleMapper.deleteReple(num);
    }
	
}
