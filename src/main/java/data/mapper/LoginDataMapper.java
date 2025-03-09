package data.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import data.dto.LoginDataDto;

@Mapper
public interface LoginDataMapper {
    public void insertLoginData(LoginDataDto loginDataDto);
    public LoginDataDto findById(String id);
    public LoginDataDto findByUsername(String iusername);
    @Select("SELECT * FROM logindata WHERE iusername = #{iusername} AND ipassword = #{ipassword}")
    public LoginDataDto findByUsernameAndPassword(String iusername, String ipassword);
    public int checkMyid(String id);
}

