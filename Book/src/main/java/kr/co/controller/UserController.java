package kr.co.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.parser.Entity;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.UserVO;
import kr.co.service.UserService;

@Controller
@RequestMapping("/users")
public class UserController {
	@Inject
	UserService service;
	
	
	@RequestMapping(value="membership", method=RequestMethod.GET)
	public void memberShip(){
		
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public void login(){
		
	}
	
	
	@RequestMapping(value="membership", method=RequestMethod.POST)
	public String memberShip(UserVO vo) throws Exception{
		service.membership(vo);
		return "redirect:/category/main";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public void loginCheck(UserVO vo, HttpServletRequest request) throws Exception{
		UserVO userVo = service.loginCheck(vo);
		
	/*HttpSession session=request.getSession();
	
		session.invalidate();
	*/
		if(userVo != null){
			HttpSession session=request.getSession();
			session.setAttribute("userVo", userVo);
			
		}else{
			return;
		}
		
		/*return "redirect:/category/main";*/
		
		/*.setAttribute("check", check);*/
		//model.addAttribute("check", check);
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public void logout(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.invalidate();
	}
}
