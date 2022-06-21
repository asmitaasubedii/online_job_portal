package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			String firstname= req.getParameter("fname");
			String lastname= req.getParameter("lname");
			int number= Integer.parseInt(req.getParameter("pno"));
			String email= req.getParameter("email");
			String password= req.getParameter("password");
			
			UserDAO dao = new UserDAO(DBConnect.getConn());
			User u = new User(firstname,lastname,email,password,number,"User");
			
			boolean f= dao.addUser(u);
			HttpSession session = req.getSession();
			
			if(f) {
					session.setAttribute("succMsg", "Registration Sucessfully");
					resp.sendRedirect("register.jsp");
				}else {
					session.setAttribute("succMsg", "Something wrong on Server");
					resp.sendRedirect("register.jsp");
				}			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
