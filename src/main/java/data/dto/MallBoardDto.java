package data.dto;

/*
create table mallboard
(
	num smallint auto_increment primary key,
    name varchar(30),
    hp varchar(30)
);
*/

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("MallBoardDto")
public class MallBoardDto {
	private int num;
	private String name;
	private String hp;
}
