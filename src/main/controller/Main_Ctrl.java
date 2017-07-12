package main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import main.service.Main_Service;
import main.vo.Inquiry;

@Controller
@RequestMapping("/main.do")
public class Main_Ctrl {
	@Autowired(required=false)
	public Main_Service service;
	
	@RequestMapping(params="method=main")
	public String start(){
		
		return "main/main.jsp";
	}
	
	@RequestMapping(params="method=inquiry")
	public String insert(Inquiry ins){
		System.out.println(ins.getName());
		System.out.println(ins.getEmail());
		System.out.println(ins.getContent());
		service.insertInquiry(ins);
		return "redirect:/main.do?method=main";
	}
	
	@RequestMapping(params="method=basketball")
	public String basketball(){
		
		return "pages/basketball.jsp";
	}
	
	@RequestMapping(params="method=running")
	public String running(){
		
		return "pages/running.jsp";
	}
}
