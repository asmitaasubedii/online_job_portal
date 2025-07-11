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
@WebServlet("/update")
public class UpdateJobsServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id= Integer.parseInt(req.getParameter("id"));
			String title=req.getParameter("title");
			String email=req.getParameter("email");
			String location=req.getParameter("Location");
			String category=req.getParameter("category");
			String status=req.getParameter("status");
			String description=req.getParameter("description");
			String time=req.getParameter("time");
			String salary=req.getParameter("salary");
			String experience=req.getParameter("experience");
			
			
			Job j= new Job();
			j.setId(id);
			j.setTitle(title);
			j.setEmail(email);
			j.setLocation(location);
			j.setCategory(category);
			j.setStatus(status);
			j.setDescription(description);
			j.setTime(time);
			j.setSalary(salary);
			j.setExperience(experience);
			
			
			HttpSession session= req.getSession();
			JobDAO dao= new JobDAO(DBConnect.getConn());
			boolean f= dao.updateJob(j);
			
			if(f) {
				session.setAttribute("succMsg", "job updated");
				resp.sendRedirect("view_jobs.jsp");
			}else {
				session.setAttribute("succMsg", "error");
				resp.sendRedirect("view_jobs.jsp");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
