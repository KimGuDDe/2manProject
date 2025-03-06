package login.dto;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

//CREATE table logindata(
//num smallint auto_increment primary key,
//id varchar(40),
//iusername VARCHAR(50),
//ipassword VARCHAR(255),
//photo varchar(50),
//writeday datetime
//);


@Data
@Alias("LoginDataDto")
public class LoginDataDto {
	private int num;
	private String id;
	private String iusername;
	private String ipassword;
	private String photo;
	private Timestamp writeday;
}	
