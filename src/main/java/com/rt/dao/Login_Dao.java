package com.rt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.rt.entities.Login_Entities;

@Repository
public class Login_Dao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public int register(Login_Entities log_entity) {
		
		int rs = 0;
		Object args[]= {log_entity.getName(),log_entity.getEmail(),log_entity.getPwd(),log_entity.getConfirm_pwd()};
		String query = "insert into logintbl(name,email,pwd,confirm_pwd) values(?,?,?,?)";
		
		try {
			
			rs = jdbcTemplate.update(query, args);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rs;
		
	}

	public int login(Login_Entities log_entity) {
		
		Object args[]= {log_entity.getEmail(),log_entity.getPwd()};
		String query ="select count(*) from logintbl where email=? and pwd=?";
		Integer rs = 0;
		
		try {
			
			rs = jdbcTemplate.queryForObject(query, args,new RowMapper<Integer>() {

				@Override
				public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
					
					int count = rs.getInt(1);
					return count;
				}
				
			});
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
		
	}

}
