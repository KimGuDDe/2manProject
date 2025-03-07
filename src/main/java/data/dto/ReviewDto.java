package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

/*
create table review
(
	renum smallint auto_increment primary key,
    name varchar(30),
    content varchar(200),
    designer varchar(30)
);
 */

@Data
@Alias("ReviewDto")
public class ReviewDto {
	private int renum;
	private String name;
	private String content;
	private String designer;
}
