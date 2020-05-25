package com.controller;
import javax.servlet.http.HttpServletRequest; 


import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;  
  

@Controller  
public class AdminCon {  
  
	  @RequestMapping("/hello")  
	    public String display(HttpServletRequest req,Model m)  
	    {  
	        //read the provided form data  
	        String name=req.getParameter("name");  
	        String pass=req.getParameter("pass");  
	        if(pass.equals("admin"))  
	        {  
	        	String msg= "Welcome admin";
	            m.addAttribute("admin",msg);
	            return "viewpage.jsp";  
	        }  
	        else  
	        {  
	            String msg="Sorry You entered an incorrect username or password";  
	            m.addAttribute("message", msg);  
	            return "errorpage.jsp";  
	        }     
	    }  
	   
}  