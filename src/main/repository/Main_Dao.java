package main.repository;

import org.springframework.stereotype.Repository;

import main.vo.Inquiry;

@Repository
public interface Main_Dao {
	
	public void insertInquiry(Inquiry ins);
}
