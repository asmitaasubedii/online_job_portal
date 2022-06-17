package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Job;

public class JobDAO {
 private Connection con;

public JobDAO(Connection con) {
	super();
	this.con = con;
}
public boolean addJob(Job j) {
	boolean f= false;
	
	try {
		  String sql= "insert into job(title,description,category,status,location) values (?,?,?,?,?)";
		  PreparedStatement ps=con.prepareStatement(sql);  
		
		  ps.setString(1, j.getTitle());
		  ps.setString(2, j.getDescription());
		  ps.setString(3, j.getCategory());
		  ps.setString(4, j.getStatus());
		  ps.setString(5, j.getLocation());
		 
		  
		  int i=ps.executeUpdate();
		  
		  if(i==1) {
			  f= true;
		  }
		  
		  
	}catch(Exception e){
    	System.out.println(e);
    	}  
	return f;
}

public List<Job> getAllJob(){
	List<Job> list= new ArrayList<Job>();
	Job j =null;
	try {
		
		String sql= "select * from job order by id desc";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			
			j=new Job();
			j.setId(rs.getInt(1));
			j.setTitle(rs.getString(2));
			j.setDescription(rs.getString(3));
			j.setCategory(rs.getString(4));
			j.setStatus(rs.getString(5));
			j.setLocation(rs.getString(6));
			j.setPublishdate(rs.getTimestamp(7)+"");
			list.add(j);
					
		}
		
	}catch(Exception e){
    	System.out.println(e);
    	} 
	return list;
}}


























