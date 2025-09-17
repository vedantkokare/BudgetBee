package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.ExpenseDao;
import com.rt.entities.Expense_Entities;

@Service
public class ExpenseService {
	
	@Autowired
	ExpenseDao ed;

	    public void add(Expense_Entities e, String username) {
	        ed.add(e, username);
	    }
	    
	    public void updateExpense(Expense_Entities e) {
			ed.update(e);		
		}
	    
	    public void deleteExpense(int id) {
	        ed.deleteById(id);
	    }

		public List<Expense_Entities> getAll(String username) {
			
			List<Expense_Entities> list = ed.getAll(username);
			return list;
			
		}

		public int totalDebit(String username) {
			
			return ed.totalDebit(username);
			
		}

		public int totalCredit(String username) {
			// TODO Auto-generated method stub
			return ed.totalCredit(username);
		}
		
		public int getTotalAmount(String username) {
			
		    return totalCredit(username) - totalDebit(username);
		        
		 }

		public Expense_Entities getById(int id) {
			
			Expense_Entities ee = ed.getById(id);
			return ee;
			
		}
	
}
