package Lib_Query;

import java.util.HashMap;

public class RetriveQuery {

	public String retriveByUserName (HashMap<String,Object> hm ,String tablename) {
		String query = "SELECT * FROM "+tablename+" WHERE USER_NAME='"+hm.get("USER_NAME")+"';";
        return query;
	}
	public String retriveByUserNameAndPassword (HashMap<String,Object> hs ,String tablename) {
			
		return "select * from "+tablename+" where USER_NAME='"+hs.get("USER_NAME")+"'AND PASSWORD='"+hs.get("PASSWORD")+"';" ;
	}
	public String retriveByUserNameSession (HashMap<String,Object> hm ,String tablename) {
		return "SELECT *  FROM "+tablename+" WHERE USER_NAME='"+hm.get("USER_NAME")+"'AND STATUS='1';";
	}
	public String sessionAllDataRetrival (String tablename) {
		return "SELECT * FROM "+tablename+";";
	}
	public String seesionActiveUserDataRetrival (){
		return "SELECT * FROM SESSION WHERE STATUS='1'";
	}
	public String allDataRetrivalUsingTableName (String tablename)
	{
		return "SELECT * FROM "+tablename+" ORDER BY (S_NAME);";

	}
	public String studentIdRetrival (String tablename , int rollno) {
		return "SELECT S_ID FROM "+tablename+" WHERE S_ROLLNO='"+rollno+"'";
	}
	public String studentDataOnBasisRollNo (String tablename) {
		return " SELECT MAX(S_ROLLNO) AS SecondHighestRollNo FROM "+tablename+" WHERE S_ROLLNO NOT IN ( SELECT Max(S_ROLLNO) FROM "+tablename+");";

	}
	public String studentDataOnBasisRollNo1 (String tablename) {
		return " SELECT S_ROLLNO FROM "+tablename+";";

	}
}
