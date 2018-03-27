package Controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import Lib_Query.*;
import Model.DataModel;
import Services.DataServices;

//@CrossOrigin(origins="*")
@RestController
@EnableWebMvc
@EnableAsync
public class AppController {
	
	DataServices cs=new DataServices();
	
    @RequestMapping(value="/tasks",method = RequestMethod.POST,headers="Accept=application/json")	
public @ResponseBody HashMap<String,Object> apps (@RequestParam("data1")String  s1,@RequestParam("data2")String  s2){
	HashMap <String,Object> hm =new HashMap<String,Object>(  );
	hm.put("Hello", "World");
	hm.put("id", s1);
	hm.put("name", s2);
	System.out.println(hm);
		return hm;
		
	}
    @RequestMapping(value = "/checkl", method = RequestMethod.POST)  
    public @ResponseBody HashMap<String,Object> apps1 (HttpServletRequest request, HttpServletResponse response){
    	HashMap <String,Object> hm =new HashMap<String,Object>();
    	
    	hm.put("Hello", "World");
    	hm.put("id", request.getParameter("data1"));
    	System.out.println(request);
    	System.out.println(hm);

    		return hm;
    	
    		
    		
    		
    	}
    
    
    @RequestMapping(value="/datamodel",method = RequestMethod.POST,headers="Accept=application/json")	
    public @ResponseBody HashMap<String,Object> modelsetting (@RequestBody DataModel dm){
    	HashMap<String,Object> hash=new HashMap<String, Object>();
		
		//Random UserName
    	dm.setUsername(ValidationData.userNameGenration(dm.getFirstname(),dm.getLastname()) );
		//Password Validation 
	    hash.put("Password",((ValidationData.passwordValidation (dm.getPassword()))) );
	   
	    //Mobile Validation
	    hash.put("Mobile",(ValidationData.mobileNoValidation (dm.getMobileno())));
	    
	    // Email Validation 
	    hash.put("Eamil",(ValidationData.emailValidation(dm.getEmail())));
	    
	    // Call Service
	    try {
			if (hash.get("Password").equals("Strong")&&(hash.get("Mobile").equals("true")&& hash.get("Eamil").equals("true"))) {
				String s= cs.addDataService(dm);
				hash.put("Message",s);
				if (s==ValidationData.SRN)
				{
					hash.put("Satatus", "UnSuccessful");
					hash.put ("message 1","User Exist");
				}
			}else {
				hash.put("Status","Error");
				hash.put("Message",ValidationData.ERROR);
			}
			} catch (Exception e) {
				System.out.println(e);			
				e.printStackTrace();
			}
	    	return hash;
	}
    
    
 // Retrive Data By UserName
 	@RequestMapping (value="/retrivebyusername", method=RequestMethod.POST, headers="Accept=application/json")	
 	public HashMap<String,Object> retriveDataByUserName (@RequestBody DataModel usermodel){
 		try {
 			//ArrayList<String> s= cs. retriveDataService (usermodel);
 	 		HashMap<String,Object> hash=new HashMap<String, Object>(cs. retriveDataService (usermodel));

 			return hash;
 			/*if (s.isEmpty()) {
 				hash.put("Status","UnSuccesful");
 				hash.put("Message",ValidationData.UNNF);
 				hash.remove("Data", null);
 					
 			}else {
 				//hash.put("Status","success");
 				//hash.put("Message","Your data");
 				hash.put("Data", s);
 			}*/
 		} catch (Exception e) {
 			System.out.println(e);
 			e.printStackTrace();
 			return null;
 		}
 		   
 	 }
    
    
    
}


