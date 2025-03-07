package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.ContectDto;
import data.service.ContectService;
import lombok.RequiredArgsConstructor;
import naver.storage.NcpObjectStorageService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/contect")
public class ContectController {

	private final ContectService contectService;

	@Autowired
	private final NcpObjectStorageService storageService;

	private final String bucketName = "bitcamp-bucket-103";

	@GetMapping
	public String showForm(Model model) {
	    model.addAttribute("contectDto", new ContectDto());
	    return "main/loginsuccess"; // JSP 파일 이름
	}
	
	@PostMapping
	@ResponseBody
	public String submitForm(@ModelAttribute ContectDto contectDto)
	{
		contectService.insertContect(contectDto);
		return "폼이 성공적으로 저장되었습니다";
	}
   
}
