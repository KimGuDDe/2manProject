package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

//create table contect(
//num smallint auto_increment primary key,
//cname varchar(50),
//cemail varchar(200),
//csubject varchar(500),
//cmessage varchar(2000)
//);

@Data
@Alias("ContectDto")
public class ContectDto {
	private int num;
	private String cname;
	private String cemail;
	private String csubject;
	private String cmessage;	
}
