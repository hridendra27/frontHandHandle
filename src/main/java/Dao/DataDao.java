package Dao;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import Lib_Query.*;

public class DataDao {
	
	  private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	InsertQuery insertquery =new InsertQuery();

	public String  saveEmployee(HashMap<String,Object> param ){  
		/*int p = new SimpleJdbcInsert(jdbcTemplate).withTableName("USER").execute(i.insertIntoTable(e));
	     return jdbcTemplate.queryForInt (i.insertIntoTable("USER",e));  
	     return p;*/
		try {
			String sql=insertquery.insertIntoTable(param,"studentmain");
			jdbcTemplate.execute(sql);
			return ValidationData.SR;
		} catch (DataAccessException e) {
			e.printStackTrace();
			return ValidationData.SRN;
		}	
	}

}
