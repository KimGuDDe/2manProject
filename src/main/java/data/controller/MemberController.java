package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import data.dto.ContectDto;
import data.dto.LoginDataDto;
import data.service.ContectService;
import data.service.LoginDataService;
import jakarta.servlet.http.HttpSession;
import naver.storage.NcpObjectStorageService;

@Controller
public class MemberController {
	@Autowired
	LoginDataService loginDataService;
	@Autowired
	ContectService contectService;
	@Autowired
	NcpObjectStorageService storageService;
	
	//버켓 이름
	private String bucketName = "bitcamp-bucket-103";
	
	@GetMapping("/member/mypage")
	public String goMypage(HttpSession session, Model model)
	{
		//회원의 정보 가져오기
		LoginDataDto user = (LoginDataDto)session.getAttribute("loggedInUser");
		
		List<ContectDto> list = null;
		list=contectService.getSelectContect();
		
		if(user == null)
		{
			return "redirect:/";
		}
		else
		{ 
			for(int i=0; i<list.size(); i++)
			{
				ContectDto cdto = list.get(i);
				System.out.println("문의내역: "+cdto);
			}
			
			model.addAttribute("user", user);
			model.addAttribute("list", list);
			
			return "member/mypage";
		}
	
	}
}