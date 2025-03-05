package board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	@GetMapping("/")
	public String goMain()
	{
		return "main/NewFile";
	}
}
