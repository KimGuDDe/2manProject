// BoardService.java
package data.service;

import data.dto.BoardDto;
import data.dto.Pagination;
import data.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    private final BoardMapper boardMapper;

    @Autowired
    public BoardService(BoardMapper boardMapper) {
        this.boardMapper = boardMapper;
    }

    // 전체 게시글 개수 리턴
    public int getBoardListCnt(Pagination pagination) {
        return boardMapper.selectBoardTotalCount(pagination);
    }

    // 전체 게시글 리스트로 리턴
    public List<BoardDto> getBoardList(Pagination pagination) {
        return boardMapper.selectBoardList(pagination);
    }
    
 // 게시글 삽입 메서드 추가
    public void insertBoard(BoardDto boardDto) {
        boardMapper.insertBoard(boardDto);
    }
}
