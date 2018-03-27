package Lib_Query;

import java.util.HashMap;

public class UpdateQuery {
   
	public String updateDataByUserName(HashMap<String,Object> hm ,String username, String tablename) {
      
		
		String query ="UPDATE login."+tablename+" SET ";
		String query1=" WHERE USER_NAME ='"+username+"';";
        for (HashMap.Entry<String, Object> m:hm.entrySet()){
       	 query=query+""+m.getKey()+"='"+m.getValue()+"',";
        } 
        query=query.substring(0, query.length()-1);
        query=query+query1;
		
		System.out.println(query);
		return query;
		
		//UPDATE `login`.`USER` SET `FIRST_NAME`='dcd', `USER_NAME`='reer' WHERE `USER_ID`='1';
	//String query="update employee set ename='"+e.getName()+"' where id="+e.getId()+"; ;  

	}
	public String updateSessionDataByUserName (String username, String tablename) {
		
		return "UPDATE `login`.`"+tablename+"` SET `STATUS`='0', `UPDATE_DATE_TIME`=CURRENT_TIMESTAMP() WHERE USER_NAME='"+username+"'&& STATUS='1'; ";
	
	//	UPDATE `login`.`SESSION` SET `STATUS`='0', `UPDATE_DATE_TIME`='' WHERE `SESSION_ID`='1';

	}
public String updateTimeSessionDataByUserName (String username, String tablename) {
		
		return "UPDATE `login`.`"+tablename+"` SET  `UPDATE_DATE_TIME`=CURRENT_TIMESTAMP() WHERE USER_NAME='"+username+"'&& STATUS='1'; ";
	
	//	UPDATE `login`.`SESSION` SET `STATUS`='0', `UPDATE_DATE_TIME`='' WHERE `SESSION_ID`='1';

	}
}
