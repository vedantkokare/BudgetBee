package com.rt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.entities.Expense_Entities;
import com.rt.entities.Login_Entities;
import com.rt.service.ExpenseService;
import com.rt.service.Login_Service;

@Controller
public class LoginController {
	
	@Autowired
	Login_Service log_service;
	
	@Autowired
	ExpenseService es;
	
	@PostMapping("/register")
	public String register(Model m,@ModelAttribute Login_Entities log_entity) {
		
		int rs = log_service.register(log_entity);
		
		if(rs>=1) {
			m.addAttribute("successMsg", "Registration Successful");
			return "Login";
		}
		else {
			m.addAttribute("errorMsg", "Error Occured");
			return "Register";
		}
		
	}
	 
	@PostMapping("/login")
	public String login(Model m,@ModelAttribute Login_Entities log_entity,HttpSession hs) {
		 
		int count = log_service.login(log_entity);
		hs.setAttribute("log-name", log_entity.getEmail());
		String username =(String) hs.getAttribute("log-name");
		if(count>=1) {
			m.addAttribute("loggedIn",username);
//			Total Debit 
			int totalDebit = es.totalDebit(username);
			m.addAttribute("totalDebit", totalDebit);
			
			int totalCredit = es.totalCredit(username);
			m.addAttribute("totalCredit", totalCredit);
			
			int getTotalAmount = es.getTotalAmount(username);
			m.addAttribute("getTotalAmount", getTotalAmount);
//			Get All Data
			List<Expense_Entities> list = es.getAll(username);
			m.addAttribute("list", list);

			return "dashboard";
		}
		else {
			m.addAttribute("errorLogin", "Invalid Login Credentials");
			return "Login";
		}
		
	}

}
