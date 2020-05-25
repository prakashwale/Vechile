package com.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Car;
import com.model.Order;

public class OrderDao {
	JdbcTemplate template; 
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	} 
	public int save7(Order p) {
		String sql="insert into order99(id,brand,engine,model,transmission,price,email,pass,date) values('"+p.getId()+"','"+p.getBrand()+"','"+p.getEngine()+"','"+p.getModel()+"','"+p.getTransmission()+"','"+p.getPrice()+"','"+p.getEmail()+"','"+p.getPass()+"','"+p.getDate()+"')";
	    return template.update(sql); 
		
	}
	public int update1(Order p){    
	    String sql="update Order99 set brand='"+p.getBrand()+"',engine='"+p.getEngine()+"',model='"+p.getModel()+"',Transmission='"+p.getTransmission()+"',price='"+p.getPrice()+"',email='"+p.getEmail()+"',pass='"+p.getPass()+"',date='"+p.getDate()+"'  where id='"+p.getId()+"'";    
	    return template.update(sql);    
	} 
	public int delete1(int id){    
	    String sql="delete from order99 where id="+id+"";    
	    return template.update(sql);    
	} 
	public List<Order> getOrder() {
		 return template.query("select * from Order99",new RowMapper<Order>(){    
		        public Order mapRow(ResultSet rs, int row) throws SQLException {    
		            Order e=new Order();    
		            e.setId(rs.getInt(1));    
		            e.setBrand(rs.getString(2));    
		            e.setEngine(rs.getString(3));    
		            e.setModel(rs.getString(4));   
		            e.setTransmission(rs.getString(5));    
		            e.setPrice(rs.getString(6)); 
		            e.setEmail(rs.getString(7)); 
		            e.setDate(rs.getString(9)); 
		            return e;    
		        }    
		    });    
		}
}
