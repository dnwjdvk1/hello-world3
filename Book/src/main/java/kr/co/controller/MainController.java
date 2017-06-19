package kr.co.controller;


import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.BookVO;
import kr.co.persistence.BookDAO;
import kr.co.service.BookService;

@Controller
@RequestMapping("/category")

public class MainController {

	@Inject 
	BookService service;
	
	@RequestMapping(value="main", method=RequestMethod.GET)
	public void main(Model model){
		List<BookVO> list = null;
		list = service.bookRank();
		model.addAttribute("list", list);
		System.out.println(list);
		//System.out.println(list.size());
	}
	
	@RequestMapping(value="korea", method=RequestMethod.GET)
	public void korea(){
		
	}
	
	
	@RequestMapping(value="foreign", method=RequestMethod.GET)
	public void foreign(){
		
	}
	
	@RequestMapping(value="used", method=RequestMethod.GET)
	public void used(){
		
	}
	
	@RequestMapping(value="cdanddvd", method=RequestMethod.GET)
	public void cdDvd(){
		
	}
	
	@RequestMapping(value="movieandshow", method=RequestMethod.GET)
	public void movieandshow(){
		
	}
	
	@RequestMapping(value="fashionandkids", method=RequestMethod.GET)
	public void fashionandkids(){
		
	}
}
