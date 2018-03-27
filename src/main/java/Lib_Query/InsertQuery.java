package Lib_Query;

import java.util.HashMap;


public class InsertQuery {

	//Insert Into User Table in login Db
	public String insertIntoTable ( HashMap<String,Object> hm ,String tablename) {
	    
	     String query1=")VALUES(";
         String query =  "INSERT INTO login."+tablename+" (";
         for (HashMap.Entry<String, Object> m:hm.entrySet()){
        	 query=query+""+m.getKey()+",";
        	 query1=query1+"'"+m.getValue()+"',";
         } 
         query=query.substring(0, query.length()-1);
         query1=query1.substring(0, query1.length()-1);
         query=query+query1+");";
        // System.out.println(query);

        // INSERT INTO `login`.`USER` (`FIRST_NAME`, `LAST_NAME`, `USER_NAME`, `EMAIL`, `PASSWORD`, `GENDER`, `MOBILE`, `DOB`) VALUES ('dfewf', 'feqwewf', 'fewe', 'wefewq', 'weqfew', '1', 'weqfe', '200-11-17');
	    //return  "INSERT INTO `login`.`"+tablename+"` (`FIRST_NAME`, `LAST_NAME`, `USER_NAME`, `EMAIL`, `PASSWORD`, `GENDER`, `MOBILE`, `DOB`) VALUES ('"+e.getFirst_name()+"', '"+e.getLast_name()+"', '"+e.getUser_name()+"', '"+e.getEmail()+"', '"+e.getPassword()+"', '"+e.getGender()+"', '"+e.getMobile()+"', '"+e.getDate1()+"'); "; 
         return query;

	}
	
	
}
	


