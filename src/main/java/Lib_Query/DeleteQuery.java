package Lib_Query;

import java.util.HashMap;

public class DeleteQuery {
	public String deleteDataByUserName (HashMap<String, Object> hs , String tablename) {
		String query="DELETE FROM  "+tablename+" WHERE USER_NAME='"+hs.get("USER_NAME")+"'; ";  
	    return query;

	}

}
