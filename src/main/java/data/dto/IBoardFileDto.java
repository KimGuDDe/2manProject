package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IBoardFileDto")
public class IBoardFileDto {
	private int num;
	private int idx;
	private String filename;
}
