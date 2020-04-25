package com.industry.controller;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
public class Logout1 extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException
	{
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
			session.invalidate();
			try
			{
				response.sendRedirect("index.jsp");
			}
			catch(Exception e)
			{
				out.println("Exception "+e);
			}
		}

	}
}