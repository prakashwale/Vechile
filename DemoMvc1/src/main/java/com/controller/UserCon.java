package com.controller;



import com.model.Car;

import com.model.Login;
import com.model.Order;
import com.model.User;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
  
import com.dao.UserDao; 
@Controller 
public class UserCon {
	 @Autowired   
	 UserDao dao1;
	 @RequestMapping("/user")    
	    public String showform(Model m){    
	        m.addAttribute("command", new User());  
	        return "user.jsp";   
	    }    
	      
	    @RequestMapping(value="/save1",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("user") User user){    
	        dao1.save1(user);    
	        return "redirect:/login.jsp";    
	    }   
	    
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
	    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
	      ModelAndView mav = new ModelAndView("login.jsp");
	      mav.addObject("login", new Login());
	      return mav;
	    }
	    
	    @RequestMapping(value="/loginprocess",method = RequestMethod.POST)    
	    public ModelAndView login(@ModelAttribute("login") Login login){    
	    	 ModelAndView mav = null;
	    	User user =dao1.validateUser(login); 
	    	 if (null != user) {
	    		    mav = new ModelAndView("welcome.jsp");
	    		    mav.addObject("firstname",user.getEmail());
	    		    } else {
	    		    mav = new ModelAndView("login.jsp");
	    		    mav.addObject("message", "sorry you have entered wrong email and password");
	    		    }
	        return mav;    
	    }
	  
	 
}
