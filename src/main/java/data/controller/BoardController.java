// BoardController.java
package data.controller;

import data.dto.BoardDto;
import data.dto.Pagination;
import data.dto.ReviewDto;
import data.service.BoardService;
import data.service.ReviewService;
import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
public class BoardController {

	private final BoardService boardService;
	private final ReviewService reviewService;	
	
		@GetMapping("/board/list")
		public String boardList(Model model, @RequestParam(defaultValue = "1") int pageNum, @RequestParam(defaultValue = "10") int listSize) {
			Pagination pagination = new Pagination(pageNum, listSize);
			pagination.setTotalCnt(boardService.getBoardListCnt(pagination));

			List<BoardDto> boardList = boardService.getBoardList(pagination);

			model.addAttribute("boardList", boardList);
			model.addAttribute("pagination", pagination);

			return "board/boardList";
		}

		// 게시글 작성 페이지 이동
		@GetMapping("/board/write")
		public String writeForm() {
			return "board/writeForm";
		}

		// 게시글 작성 처리
		@PostMapping("/board/write")
		public String write(BoardDto boardDto) {
			boardService.insertBoard(boardDto);
			return "redirect:/board/list";
		}

		@GetMapping("/board/review")
		public String getReviewList(Model model) {
			List<ReviewDto> reviewList = reviewService.getReviewList();

			for(int i=0; i<reviewList.size(); i++)
			{
				ReviewDto rdto = reviewList.get(i);
				System.out.println("문의내역: "+rdto);
			}

			model.addAttribute("reviewList", reviewList);
			return "board/allreview";
		}
	}
