package data.service;

import org.springframework.stereotype.Service;

import data.dto.LoginDataDto;
import data.mapper.LoginDataMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class LoginDataService {
    
    final LoginDataMapper loginDataMapper;
    
    public void insertLoginData(LoginDataDto loginDataDto) {
        loginDataMapper.insertLoginData(loginDataDto);
    }
    
    public LoginDataDto findById(String id) {
        return loginDataMapper.findById(id);
    }
    
    public LoginDataDto findByUsername(String iusername) {
        return loginDataMapper.findByUsername(iusername);
    }
    
    public LoginDataDto login(String iusername, String ipassword) {
        return loginDataMapper.findByUsernameAndPassword(iusername, ipassword);
    }
    
    public boolean isMyidCheck(String id)
	{
		return loginDataMapper.checkMyid(id)==1?true:false;
	}
	
}
