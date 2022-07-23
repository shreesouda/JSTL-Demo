package com.bhat;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet extends HttpServlet {
	
	public void service (HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		String name = "shree";
		Student s1 = new Student(21, "shankar");
		Student s2 = new Student(23, "rahul");
		Student s3 = new Student(25, "rohit");
		Student s4 = new Student(27, "pant");
		Student s[] = new Student[4];
		s[0] = s1;
		s[1] = s2;
		s[2] = s3;
		s[3] = s4;
		
		req.setAttribute("name1", name);
		req.setAttribute("stud", s);
		RequestDispatcher rd = req.getRequestDispatcher("Myjsp.jsp");
		rd.forward(req, res);
		
	}

}
