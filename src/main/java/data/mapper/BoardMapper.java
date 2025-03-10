// BoardMapper.java
package data.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import data.dto.BoardDto;
import data.dto.Pagination;

import java.util.List;

@Mapper
public interface BoardMapper {

    // 게시글 개수 반환
    int selectBoardTotalCount(@Param("pagination") Pagination pagination);

    // 게시글 리스트
    List<BoardDto> selectBoardList(@Param("pagination") Pagination pagination);
    
    // 게시글 삽입 메서드 추가    
    public void insertBoard(BoardDto boardDto);
}
