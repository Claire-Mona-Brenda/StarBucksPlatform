package com.servlet;

import java.io.IOException;


import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.po.User;

/**
 * Servlet implementation class LoignServlet
 */
@WebServlet("/LoignServlet")
public class LoignServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoignServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		User user;
		HttpSession session=request.getSession();
		String tele=request.getParameter("tele");
		String password=request.getParameter("password");
		UserDao userdao=new UserDao();
		try{
			user=userdao.queryUserInfo(tele);
			if(user==null)
				request.getRequestDispatcher("zhuce.jsp").forward(request,response);
			else{
				if((user.getTele().equals(tele))&&(user.getPassword().equals(password))){
					session.setAttribute("initzhuye", "zhuye2.jsp");
					session.setAttribute("password", password);
					session.setAttribute("tele", tele);
					session.setAttribute("user_name", user.getName());
					response.sendRedirect("IndexServlet");
				}
				else{
					response.sendRedirect("denglu_failure.jsp");
				}
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}

}
