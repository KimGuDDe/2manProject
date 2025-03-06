package board.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.MallBoardDto;
import data.service.MallBoardService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MallBoardController {
	final MallBoardService mallBoardService;

	@GetMapping("/")
	public String list(Model model)
	{
		int num = 0;
		
		MallBoardDto dto = new MallBoardDto();
		
		List<MallBoardDto> list = mallBoardService.getList();
		
		model.addAttribute("list", list);
		
		return "mallboard/mallboardlist";
	}
}
