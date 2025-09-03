package com.rt.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;
import javax.swing.tree.TreePath;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entities.Expense_Entities;

@Repository
public class ExpenseDao {

    @Autowired
    JdbcTemplate jdbc;

    public void add(Expense_Entities e, String username) {
    	Object args[]= {e.getCategory(), e.getDate(),e.getCredit_amount(), e.getDebit_amount(), e.getPay_mode(), e.getPay_type(), e.getDescription(),username};
        String query = "insert into expensetbl(category, date, credit_amount, debit_amount, pay_mode, pay_type, description, usermail) values(?, ?, ?, ?, ?, ?, ?, ?)";
        int rs = jdbc.update(query,args);
        System.out.println(rs);
    }

    public List<Expense_Entities> getAll(String username) {
        Object args[] = { username };
        List<Expense_Entities> list = jdbc.query("select * from expensetbl where usermail=?", args,
            new RowMapper<Expense_Entities>() {
                @Override
                public Expense_Entities mapRow(ResultSet rs, int rowNum) throws SQLException {
                    Expense_Entities e = new Expense_Entities();
                    e.setId(rs.getInt("id"));
                    e.setDate(rs.getString("date"));
                    e.setDescription(rs.getString("description"));

                    int credit = rs.getInt("credit_amount");
                    int debit = rs.getInt("debit_amount");

                    e.setPay_mode(rs.getString("pay_mode"));
                    if (credit > 0) {
                        e.setPay_type("Credit");
                        e.setAmount(credit);
                    } else {
                        e.setPay_type("Debit");
                        e.setAmount(debit);
                    }

                    return e;
                }
            });
        return list;
    }

	public Integer totalDebit(String username) {
		
		Object args[]= {username};
		return jdbc.queryForObject("SELECT COALESCE(SUM(debit_amount), 0) FROM expensetbl WHERE usermail=?",args, Integer.class);
		
	}

	public int totalCredit(String username) {
		
		Object args[]= {username};
		return jdbc.queryForObject("SELECT COALESCE(SUM(credit_amount), 0) FROM expensetbl WHERE usermail=?",args, Integer.class);
		
	}

    
}
