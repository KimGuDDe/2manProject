package data.dto;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("IBoardDto")
public class IBoardDto {
	private int idx;
    private String myid;
    private String writer;
    private String subject;
    private String content;
    private int readcount;
    private int regroup;
    private int relevel;
    private int restep;
    private Timestamp writeday;
    private List<String> photos; // 첨부파일 리스트
	
}
