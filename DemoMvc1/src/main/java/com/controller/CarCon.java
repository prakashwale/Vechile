package com.controller;     
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;


import com.model.Car;    
import com.dao.CarDao;    
@Controller    
public class CarCon {    
    @Autowired    
    CarDao dao;    
    @RequestMapping("/carform")    
    public String showform(Model m){    
        m.addAttribute("command", new Car());  
        return "carform.jsp";   
    }    
      
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("car") Car car){    
        dao.save(car);    
        return "redirect:/viewpage.jsp";    
    }    
  
    @RequestMapping("/viewcar")    
    public String viewcar(Model m){    
        List<Car> list=dao.getCar();    
        m.addAttribute("list",list);  
        return "viewcar.jsp";    
    }    
     
    @RequestMapping(value="/caredit")    
    public String edit( Model m){    
    	 m.addAttribute("command", new Car());  
         return "caredit.jsp";    
    }  
   
    /* It updates model object. */    
    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("car")Car car){    
        dao.update(car);    
        return "redirect:/caredit.jsp";    
    }    
    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        dao.delete(id);
   
        return "redirect:/viewpage.jsp";
}  
  
}

