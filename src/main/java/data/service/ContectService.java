package data.service;

import java.util.List;

import org.springframework.stereotype.Service;

import data.dto.ContectDto;
import data.mapper.ContectMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ContectService {
	final ContectMapper contectMapper;
	
	public void insertContect(ContectDto contectDto)
	{
		contectMapper.insertContect(contectDto);
	}
	
	public List<ContectDto> getSelectContect()
	{
		return contectMapper.getSelectContect();
	}
}
