package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.JobDAO;
import com.entity.Job;

@WebServlet("/add_job")

public class AddJobsServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		String title=req.getParameter("title");
		String location=req.getParameter("Location");
		String category=req.getParameter("category");
		String status=req.getParameter("status");
		String description=req.getParameter("description");
		
		Job j=new Job();
		j.setTitle(title);
		j.setDescription(description);
		j.setLocation(location);
		j.setStatus(status);
		j.setCategory(category);
		
		HttpSession session= req.getSession();
		JobDAO dao= new JobDAO(DBConnect.getConn());
		boolean f= dao.addJob(j);
		
		if(f) {
			session.setAttribute("succMsg", "job addeddd");
			resp.sendRedirect("add_job.jsp");
		}else {
			session.setAttribute("succMsg", "error");
			resp.sendRedirect("add_job.jsp");
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}

}}
