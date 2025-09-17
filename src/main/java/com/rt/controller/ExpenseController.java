package com.rt.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entities.Expense_Entities;
import com.rt.service.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService es;
	
	@RequestMapping("/insert")
	public String add(Model m,HttpSession hs,@ModelAttribute Expense_Entities e,@RequestParam("amount") int amount){
		
		String username =(String) hs.getAttribute("log-name");
		
		if ("credit".equalsIgnoreCase(e.getPay_type())) {
	        e.setCredit_amount(amount);
	    	   e.setDebit_amount(0);
	       }
	    else {
	        e.setDebit_amount(amount);
	        e.setCredit_amount(0);
	    }
		es.add(e,username);
		return "redirect:/dashboard-page";
		
	}
	
	@RequestMapping("/edit")
	public String updateExpense(@ModelAttribute Expense_Entities e,@RequestParam("amount") int amount) {
		if ("credit".equalsIgnoreCase(e.getPay_type())) {
	        e.setCredit_amount(amount);
	    	   e.setDebit_amount(0);
	       }
	    else {
	        e.setDebit_amount(amount);
	        e.setCredit_amount(0);
	    }
		es.updateExpense(e);
		return "redirect:/dashboard-page";
		
	}
	
	@GetMapping("/deleteExpense")
	public String deleteExpense(@RequestParam("id") int id) {
	    es.deleteExpense(id);
	    return "redirect:/dashboard-page";
	}
	
	@GetMapping("/editformid")
	public String getById(@RequestParam("id") int id,Model m) {
		
		Expense_Entities ee = es.getById(id);
		m.addAttribute("id",ee.getId());
		m.addAttribute("category",ee.getCategory());
		m.addAttribute("date",ee.getDate());
		m.addAttribute("amount",ee.getAmount());
		m.addAttribute("pay_mode",ee.getPay_mode());
		m.addAttribute("pay_type",ee.getPay_type());
		m.addAttribute("description",ee.getDescription());
		
		return "dashboard";
		
	}

	
	public String getAll(Model m,HttpSession hs	) {
		
		String username =(String) hs.getAttribute("log-name");
		List<Expense_Entities> list =es.getAll(username);
		  m.addAttribute("list", list);
		return "redirect:/dashboard-page";
		
	}

}
