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

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<String>usernames;
	ArrayList<String>teles;
	UserDao userdao=new UserDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String username=new String(request.getParameter("username").getBytes("iso-8859-1"),"utf-8");
		String password=request.getParameter("password");
		String tele=request.getParameter("tele");
		HttpSession session=request.getSession();
		try{
			usernames=userdao.queryUsername();
			teles=userdao.queryTele();
			for(int i=0;i<teles.size();i++){
				if((tele.equals(teles.get(i)))||(username.equals(usernames.get(i)))){
					request.getRequestDispatcher("zhuce2.jsp").forward(request, response);
				}
			}
			userdao.addUser(username, password, tele);
			session.setAttribute("user_name", username);
			session.setAttribute("password", password);
			session.setAttribute("tele", tele);
			request.getRequestDispatcher("denglu.jsp").forward(request, response);
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}

}
