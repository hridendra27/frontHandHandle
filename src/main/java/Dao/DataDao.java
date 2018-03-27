package Dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import Lib_Query.*;

public class DataDao {
	
	private JdbcTemplate jdbcTemplate;
	private InsertQuery insertquery=new InsertQuery();
	private RetriveQuery retrivequery =new RetriveQuery();
	private UpdateQuery updatequery= new UpdateQuery();
	private DeleteQuery deletequery= new DeleteQuery ();
	

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

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
	
public HashMap<String,Object> retriveUserNameIdAndPassword(HashMap<String,Object> param ){  
		
		try {
		  String sql = retrivequery.retriveByUserNameAndPassword (param,"studentmain" );
			  jdbcTemplate.queryForList(sql);
			  return (HashMap<String, Object>) jdbcTemplate.queryForMap(sql);

		} catch (DataAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

}
