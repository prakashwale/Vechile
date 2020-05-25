package com.dao;
import java.sql.ResultSet;





import java.sql.SQLException;
import java.util.List;


import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.core.RowMapper;


import com.model.Login;
import com.model.User;


public class UserDao {
	JdbcTemplate template; 
    
		public void setTemplate(JdbcTemplate template) {    
		    this.template = template;    
		} 
		
		public int save1(User p) {
			String sql="insert into user99(email,password,passwordr) values('"+p.getEmail()+"','"+p.getPassword()+"','"+p.getPasswordr()+"')";
		    return template.update(sql); 
			
		}   
		public int update(User p){    
		    String sql="update user99 set email='"+p.getEmail()+"',password="+p.getPassword()+",passwordr="+p.getPasswordr()+"' where id='"+p.getId()+"'";    
		    return template.update(sql);    
		}
		  
		
		public User validateUser(Login login) {
			String sql = "select * from user99 where email='" + login.getEmail() + "' and password='" + login.getPassword()
		    + "'";
			 List<User> users = template.query(sql, new UserMapper());
			    return users.size() > 0 ? users.get(0) : null;
		
		}
	
	
			  }
			  class UserMapper implements RowMapper<User> {
			  public User mapRow(ResultSet rs, int arg1) throws SQLException {
			    User user = new User();
			    user.setId(rs.getInt("id"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	            user.setPasswordr(rs.getString("passwordr"));
			    return user;
			  }
			 
			
			  
}
			  
