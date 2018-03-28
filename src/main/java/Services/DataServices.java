package Services;

	import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
	import org.springframework.context.support.ClassPathXmlApplicationContext;

	import Dao.DataDao;
	import Model.DataModel;

public class DataServices {

	private ApplicationContext ctx= new ClassPathXmlApplicationContext("ApplicationContext.xml");
	
		DataDao dao =(DataDao)ctx.getBean("dao");
//		@Autowired
//		DataDao dao;
		// Registration Service
		public String addDataService(DataModel e) {
			
			HashMap <String,Object> hm =new  HashMap <String,Object> ();
		    hm.put("FIRST_NAME", e.getFirstname());
		    hm.put("LAST_NAME", e.getLastname());	    
		    hm.put("EMAIL", e.getEmail());
		    hm.put("PASSWORD", e.getPassword());
		    hm.put("MOBILE", e.getMobileno());
		    hm.put("DOB", e.getDob());
		    hm.put("User_Name", e.getUsername());
		    hm.put("Address", e.getAddress());
		  return	dao.saveEmployee(hm);	
			//return null;
	
	}
		//Retrive Data Service 
		public HashMap<String,Object> /* ArrayList<String>*/ retriveDataService (DataModel e) {
			HashMap <String,Object> hm =new  HashMap <String,Object> ();
		    hm.put("USER_NAME", e.getUsername());
		    hm.put("PASSWORD", e.getPassword());
			//ArrayList<String> m1= new  ArrayList <String>(dao.retriveUserNameIdAndPassword(hm));
		    HashMap<String,Object> m1=new HashMap<String,Object>(dao.retriveUserNameIdAndPassword(hm));
			return m1;
		}
		//Delete service 
		public int deleteDataService (DataModel e) {
			HashMap <String,Object> hm =new  HashMap <String,Object> ();
		    hm.put("USER_NAME", e.getUsername());
		    
		    	 return dao.deleteUserByUserName(hm);
		
		}
		

		//Update Service 
		public int updateDataService (DataModel e) {
			HashMap <String,Object> hm =new  HashMap <String,Object> ();
			HashMap <String,Object> hm1 =new  HashMap <String,Object> ();
			hm.put("FIRST_NAME", e.getFirstname());
		    hm.put("LAST_NAME", e.getLastname());	    
		    hm.put("EMAIL", e.getEmail());
		    hm.put("PASSWORD", e.getPassword());
		    hm.put("MOBILE", e.getMobileno());
		    hm.put("DOB", e.getDob());
		    hm.put("User_Name", e.getUsername());
		    hm.put("Address", e.getAddress());

		    for (HashMap.Entry<String, Object> m:hm.entrySet()) {
		    	String key=m.getKey();
		    	if (m.getValue()!=null) {
		    		hm1.put(key,m.getValue());
		    	}
		    }
	        String username =(String) hm1.get("User_Name");
	        hm1.remove("User_Name");  
	    	return dao.updateUserByUserName(hm1,username); 
	       
		}
		
		
		// Session Result Set
		public ArrayList <String> sessionResultSet () {
			ArrayList<String> m1= new  ArrayList <String> (dao.sessionDataRetrival());
			return m1;
		}
		
		// Data Retrival All User 
		
		public ArrayList <String> dataRetrivalUser () {
			ArrayList<String> m1= new  ArrayList <String> (dao.userDataRetrivalAll());
			return m1;
		}
}
