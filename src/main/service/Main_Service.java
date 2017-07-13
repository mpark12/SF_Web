package main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.repository.Main_Dao;
import main.vo.Inquiry;
import main.vo.Signup;

@Service
public class Main_Service {
	@Autowired(required=false)
	public Main_Dao dao;
	
	public void insertInquiry(Inquiry ins){
		dao.insertInquiry(ins);
	}
	
	public void signUp(Signup ins){
		dao.signUp(ins);
	}
}
