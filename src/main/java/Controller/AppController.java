package Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import Model.DataModel;

@RestController
@EnableWebMvc
//@CrossOrigin(origins="*")
public class AppController {
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
	HashMap <String,Object> hm =new HashMap<String,Object>( );
	
	System.out.println(dm.getData2());
	
		return hm;
		
	}
}


