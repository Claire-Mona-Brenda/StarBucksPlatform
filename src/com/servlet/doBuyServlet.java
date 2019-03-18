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
import com.po.GoodInfo;
import com.po.Order;
import com.po.User;
/**
 * Servlet implementation class doBuyServlet
 */
@WebServlet("/doBuyServlet")
public class doBuyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doBuyServlet() {
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
		HttpSession session=request.getSession();
		ArrayList<GoodInfo>goodsList=(ArrayList<GoodInfo>)session.getAttribute("goodsList");
		int id=Integer.parseInt(request.getParameter("id"));
		GoodInfo single=goodsList.get(id);
		single.setId(id);
		
		Order order=new Order();
		ArrayList<Order>sorderlist=order.getOrderList();
		Order sorder=new Order();
		sorder.setId(single.getId());
		sorder.setName(single.getName());
		sorder.setNum(1);
		sorder.setPic(single.getPic());
		sorder.setPrice(single.getPrice());
		sorder.setTotal_price(single.getPrice());
		sorderlist.add(sorder);
		
		order.setOrderList(sorderlist);
		order.setTotal_price(single.getPrice());
		order.setPTime();
		ArrayList<Order>orderList=(ArrayList<Order>)session.getAttribute("orderList");
		if(orderList==null)
			orderList=order.getOrderList();
		orderList.add(order);
		session.setAttribute("orderList", orderList);
		session.setAttribute("order", order);
		
		String user_name=(String)session.getAttribute("user_name");
		if(user_name==null)
			response.sendRedirect("denglu.jsp");
		else{
			UserDao userdao=new UserDao();
			try{
				User myAddress=userdao.queryAddress(user_name);
				if(myAddress==null){
					response.sendRedirect("writeDefaultAddress.jsp");
				}
				else{
					session.setAttribute("myAddress",myAddress);
					request.getRequestDispatcher("querendingdan.jsp").forward(request, response);
				}
			}
			catch(SQLException e){
				e.printStackTrace();
			}
		}
		
	}

}
