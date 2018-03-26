package Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
//@CrossOrigin(origins = "http://localhost:8080")
public class AppController {
    @RequestMapping(value="/tasks",method = RequestMethod.POST,headers="Accept=application/json")	
public @ResponseBody HashMap<String,Object> apps (){
	HashMap <String,Object> hm =new HashMap<String,Object>();
	hm.put("Hello", "World");
	hm.put("id", "cu");
		return hm;
		
	}
    @RequestMapping(value = "/checkl", method = RequestMethod.POST)  
    public @ResponseBody HashMap<String,Object> apps1 (HttpServletRequest request, HttpServletResponse response){
    	HashMap <String,Object> hm =new HashMap<String,Object>();
    	
    	hm.put("Hello", "World");
    	hm.put("id", request.getParameter("id"));
    	System.out.println("hgdugc");
    		return hm;
    		// Git Commit
    		//New Changes
    		
    		
    	}
}
