package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Job;
import com.entity.User;

public class UserDAO {
	 private Connection con;

	 public UserDAO(Connection con) {
	 	super();
	 	this.con = con;
	 }
	 public boolean addUser(User u) {
			boolean f= false;
			
			try {
				  String sql= "insert into users(firstname,lastname,phone_number,email,password,role) values (?,?,?,?,?,?)";
				  PreparedStatement ps=con.prepareStatement(sql);  
				
				  ps.setString(1, u.getFirstname());
				  ps.setString(2, u.getLastname());
				  ps.setInt(3, u.getPhone_number());
				  ps.setString(4, u.getEmail());
				  ps.setString(5, u.getPassword());
				  ps.setString(6,"user");
				 
				  
				  int i=ps.executeUpdate();
				  
				  if(i==1) {
					  f= true;
				  }
				  
				  
			}catch(Exception e){
		    	e.printStackTrace();;
		    	}  
			return f;
		}
	 public User login(String email,String password) {
		  User u= null;
		  try {
			  String sql="select * from users where email=? and password=?";
			  PreparedStatement ps= con.prepareStatement(sql);
			  ps.setString(1, email);
			  ps.setString(2, password);
			  
			  ResultSet rs=ps.executeQuery();
			  while (rs.next()) {
				  u= new User();
				  u.setId(rs.getInt(1));
				  u.setFirstname(rs.getString(2));
				  u.setLastname(rs.getString(3));
				  u.setPhone_number(rs.getInt(4));
				  u.setEmail(rs.getString(5));
				  u.setPassword(rs.getString(6));
				  u.setRole(rs.getString(7));
			  }
			  
			  
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  return u;
	 }
	 
	 
}
