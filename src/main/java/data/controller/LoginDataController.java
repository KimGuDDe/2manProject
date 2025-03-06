package data.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import data.dto.LoginDataDto;
import data.service.LoginDataService;
import lombok.RequiredArgsConstructor;
import naver.storage.NcpObjectStorageService;

@Controller
@RequiredArgsConstructor
public class LoginDataController {
    
    private final LoginDataService loginDataService;
    
    @Autowired
    private final NcpObjectStorageService storageService;
    
    private final String bucketName = "bitcamp-bucket-103";
    
    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("loginData", new LoginDataDto());
        return "/member/register";
    }
    
  //아이디가 존재하면 result 에 fail 를 ,존재하지 않으면 success 를 보내기
  	@GetMapping("/idcheck")
  	@ResponseBody
  	public Map<String, String> idCheck(@RequestParam String id)
  	{
  		Map<String, String> map=new HashMap<>();
  		if(loginDataService.isMyidCheck(id))
  			map.put("result", "fail");
  		else
  			map.put("result", "success");
  		return map;
  	}

    @PostMapping("/register")
    public String registerUser(@ModelAttribute("loginData") LoginDataDto loginDataDto,
                               @RequestParam(value="photoFile", required=false) MultipartFile photoFile) {
        if (photoFile!=null && !photoFile.isEmpty()) {
            String originalFilename = photoFile.getOriginalFilename();
            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf("."));
            String newFilename = UUID.randomUUID().toString() + fileExtension;
            
            String uploadFilename = storageService.uploadFile(bucketName, "2manidphoto", photoFile);
            loginDataDto.setPhoto(uploadFilename);
        } else {
            loginDataDto.setPhoto("no");
        }
        
        loginDataService.insertLoginData(loginDataDto);
        return "redirect:/";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "member/login";
    }

    @PostMapping("/login")
    public String login(@RequestParam String iusername, @RequestParam String ipassword, Model model) {
        LoginDataDto user = loginDataService.login(iusername, ipassword);
        if (user != null) {
            model.addAttribute("user", user);
            System.out.println("login success");
            return "/";
        } else {
            model.addAttribute("error", "Invalid username or password");
            System.out.println("login fail");
            return "/";
        }
    }  
    
}
