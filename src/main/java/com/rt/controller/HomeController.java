package com.rt.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String starterPages() {
		return "Login";	
	}
	@RequestMapping("/loginpage")
	public String loginPage() {
		return "Login";	
	}
	@RequestMapping("/register_page")
	public String registerPage() {
		return "Register";	
	}
	@RequestMapping("/dashboard-page")
	public String dashboardPage(HttpSession hs,Model m) {
		String username =(String) hs.getAttribute("log-name");
		m.addAttribute("loggedIn",username);
		return "dashboard";
		
	}
	@RequestMapping("/transactions")
	public String TransactionPage(HttpSession hs,Model m) {
		String username =(String) hs.getAttribute("log-name");
		m.addAttribute("loggedIn",username);
		return "Transactions";
	}
	@RequestMapping("/account-settings")
	public String account_setting() {
		return "UnderConstruction";	
	}
	
	
}
