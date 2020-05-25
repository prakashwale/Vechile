package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.OrderDao;
import com.model.Car;
import com.model.Order;

@Controller 
public class OrderCon {
	  @Autowired    
	    OrderDao dao2; 
	  @RequestMapping(value="/save7",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("order") Order order){    
	        dao2.save7(order);    
	        return "redirect:/vieworder.jsp";    
	    } 
	   @RequestMapping(value="/cancel/{id}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int id,Model m){    
	        dao2.delete1(id);
	        String msg= "Deleted successfully!!!";
            m.addAttribute("message",msg);
	        return "redirect:/ordercancled.jsp";
	}
	   @RequestMapping("/bookedcar")    
	    public String viewcar(Model m){    
	        List<Order> list=dao2.getOrder();    
	        m.addAttribute("list",list);  
	        return "bookedcar.jsp";    
	    }
}
