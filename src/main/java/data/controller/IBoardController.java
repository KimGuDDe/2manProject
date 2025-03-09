package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import data.dto.IBoardDto;
import data.dto.IBoardFileDto;
import data.dto.IBoardRepleDto;
import data.service.IBoardFileService;
import data.service.IBoardRepleService;
import data.service.IBoardService;
import jakarta.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/board")
public class IBoardController {

    @Autowired
    private IBoardService boardService;

    @Autowired
    private IBoardFileService fileService;

    @Autowired
    private IBoardRepleService repleService;

    @GetMapping("/list")
    public String list(
            @RequestParam(defaultValue = "1") int pageNum,
            Model model) {
        int listSize = 5; // 한 페이지에 보여줄 게시글 수
        int blockSize = 5; // 한 블록에 보여줄 페이지 수

        int totalCount = boardService.getBoardTotalCnt();
        int totalPage = (int) Math.ceil((double) totalCount / listSize);
        int start = (pageNum - 1) * listSize;
        int startPage = (pageNum - 1) / blockSize * blockSize + 1;
        int endPage = startPage + blockSize - 1;
        if (endPage > totalPage) endPage = totalPage;

        List<IBoardDto> boardList = boardService.getBoardListWithPaging(start, listSize);

        model.addAttribute("totalCount", totalCount);
        model.addAttribute("boardList", boardList);
        model.addAttribute("pageNum", pageNum);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "board/list";
    }

    @GetMapping("/detail")
    public String detail(@RequestParam int idx, @RequestParam(defaultValue = "1") int pageNum, Model model) {
        IBoardDto board = boardService.getBoardDetail(idx);
        List<IBoardFileDto> files = fileService.getFiles(idx);
        List<IBoardRepleDto> reples = repleService.getReples(idx);

        model.addAttribute("board", board);
        model.addAttribute("files", files);
        model.addAttribute("reples", reples);
        model.addAttribute("pageNum", pageNum);

        return "board/detail";
    }

    @PostMapping("/insert")
    public String insert(@ModelAttribute IBoardDto dto, HttpSession session) {
        String myid = (String) session.getAttribute("loginid");
        dto.setMyid(myid);
        dto.setWriter("User"); // 실제로는 로그인 사용자 이름으로 설정
        boardService.insertBoard(dto);
        return "redirect:/board/list";
    }
}