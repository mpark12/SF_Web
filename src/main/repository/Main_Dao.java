package main.repository;

import org.springframework.stereotype.Repository;

import main.vo.Inquiry;
import main.vo.Signup;

@Repository
public interface Main_Dao {
	
	public void insertInquiry(Inquiry ins);
	
	public void signUp(Signup ins);
}
