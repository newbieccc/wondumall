package com..Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com..DTO.LoginDTO;
import com..Service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	//1. /login화면 불러오기
	@GetMapping(value = "/login.do")
	public String login() {
		return "login";
	}
	
	//1. 로그인 로직 처리하기
	@PostMapping(value = "/login.do")
	public String login(HttpServletRequest request) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		//dto에 담아서 데이터베이스로 보내기
		LoginDTO dto = new LoginDTO();
		dto.setU_email(email);
		dto.setU_pw(pw);
		
		//Service DAO 도 만들기
		dto = loginService.login(dto);
		if(dto != null) {
			//정상 로그인 = 세션 만들고
			HttpSession session =  request.getSession();
			session.setMaxInactiveInterval(15*60); //초단위로 세션 유지시간 지정
			session.setAttribute("email", email);
			
			return "redirect:/index";
		}else {
			//비정상 로그인 = 다시 로그인 하세요.
			return "redirect:/login?error=1254";
		}
		
		
	}

}
