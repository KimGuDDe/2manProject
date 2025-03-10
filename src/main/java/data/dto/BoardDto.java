// BoardDto.java
package data.dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("BoardDto")
public class BoardDto {
    private int id;
    private String title;
    private String content;
    private String writer;
    private Date createDate;
}
