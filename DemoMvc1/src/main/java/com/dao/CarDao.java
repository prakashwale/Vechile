package com.dao;
import java.sql.ResultSet;




import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.model.Car; 
public class CarDao {  
		JdbcTemplate template;     
		    
		public void setTemplate(JdbcTemplate template) {    
		    this.template = template;    
		}    
		public int save(Car p) {
			String sql="insert into Car99(brand,engine,model,transmission,price) values('"+p.getBrand()+"','"+p.getEngine()+"','"+p.getModel()+"','"+p.getTransmission()+"','"+p.getPrice()+"')";
		    return template.update(sql); 
			
		}   
		public int update(Car p){    
		    String sql="update Car99 set brand='"+p.getBrand()+"',engine='"+p.getEngine()+"',model='"+p.getModel()+"',Transmission='"+p.getTransmission()+"',price='"+p.getPrice()+"' where id='"+p.getId()+"'";    
		    return template.update(sql);    
		}    
		public int delete(int id){    
		    String sql="delete from Car99 where id="+id+"";    
		    return template.update(sql);    
		}     
		   
	   
		   
		public List<Car> getCar() {
			 return template.query("select * from Car99",new RowMapper<Car>(){    
			        public Car mapRow(ResultSet rs, int row) throws SQLException {    
			            Car e=new Car();    
			            e.setId(rs.getInt(1));    
			            e.setBrand(rs.getString(2));    
			            e.setEngine(rs.getString(3));    
			            e.setModel(rs.getString(4));   
			            e.setTransmission(rs.getString(5));    
			            e.setPrice(rs.getString(6)); 
			            return e;    
			        }    
			    });    
			}
		
		
		}  
		
		


	
