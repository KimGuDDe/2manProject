package data.service;

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
}
