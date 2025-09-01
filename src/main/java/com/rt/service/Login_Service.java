package com.rt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.Login_Dao;
import com.rt.entities.Login_Entities;

@Service
public class Login_Service {
	
	@Autowired
	Login_Dao log_dao;
	
	public int register(Login_Entities log_entity) {
		
		int rs = log_dao.register(log_entity);
		return rs;
		
	}

	public int login(Login_Entities log_entity) {
		
		int count = log_dao.login(log_entity);
		return count;
		
	}

}
