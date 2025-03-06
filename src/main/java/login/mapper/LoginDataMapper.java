package login.mapper;

import org.apache.ibatis.annotations.Mapper;
import login.dto.LoginDataDto;

@Mapper
public interface LoginDataMapper {
	public void insertLoginData(LoginDataDto loginDataDto);
}
