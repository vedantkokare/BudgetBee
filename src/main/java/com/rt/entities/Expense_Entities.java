package com.rt.entities;

public class Expense_Entities {
	
	private int id;
	private String Category;
	private String date;
	private int credit_amount;
	private int debit_amount;
	private int amount;
	private String pay_mode;
	private String pay_type;
	private String description;
	
	public Expense_Entities() {
		super();
	}
	
	public Expense_Entities(String category, String date, int credit_amount, int debit_amount, String pay_mode,
			String pay_type, String description) {
		super();
		Category = category;
		this.date = date;
		this.credit_amount = credit_amount;
		this.debit_amount = debit_amount;
		this.pay_mode = pay_mode;
		this.pay_type = pay_type;
		this.description = description;
	}
	
	public Expense_Entities(int id, String category, String date, int credit_amount, int debit_amount, String pay_mode,
			String pay_type, String description) {
		super();
		this.id = id;
		Category = category;
		this.date = date;
		this.credit_amount = credit_amount;
		this.debit_amount = debit_amount;
		this.pay_mode = pay_mode;
		this.pay_type = pay_type;
		this.description = description;
	}
	
	public int getAmount() {
		return amount;
	}
	
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public int getCredit_amount() {
		return credit_amount;
	}
	public void setCredit_amount(int credit_amount) {
		this.credit_amount = credit_amount;
	}
	
	public int getDebit_amount() {
		return debit_amount;
	}
	public void setDebit_amount(int debit_amount) {
		this.debit_amount = debit_amount;
	}
	
	public String getPay_mode() {
		return pay_mode;
	}
	public void setPay_mode(String pay_mode) {
		this.pay_mode = pay_mode;
	}
	
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
