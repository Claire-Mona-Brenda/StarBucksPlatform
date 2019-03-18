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
import com.po.ShopCart;
import com.po.User;

/**
 * Servlet implementation class doPayServlet
 */
@WebServlet("/doPayServlet")
public class doPayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public doPayServlet() {
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
		ShopCart myCart=(ShopCart)session.getAttribute("myCart");
		ArrayList<GoodInfo>cartList=myCart.getCartList();
		
		double total_price=0;
		Order order=new Order();
		ArrayList<Order>sorderList=order.getOrderList();
		ArrayList<Order>orderList=(ArrayList<Order>)session.getAttribute("orderList");
		if(orderList==null)
			orderList=order.getOrderList();
		
		for(int i=0;i<cartList.size();i++){
			Order sorder=new Order();
			sorder.addOrder(cartList.get(i));
			sorderList.add(sorder);
		}
		order.setOrderList(sorderList);
		
		for(int i=0;i<sorderList.size();i++){
			Order single=sorderList.get(i);
			double sprice=single.getTotal_price();
			total_price=total_price+sprice;
			order.setTotal_price(total_price);
		}
		order.setPTime();
		orderList.add(order);
		session.setAttribute("order", order);
		session.setAttribute("orderList", orderList);
		
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
					session.setAttribute("myAddress", myAddress);
					response.sendRedirect("querendingdan.jsp");
				}
			}
			catch(SQLException e){
				e.printStackTrace();
			}
		}
		
	}

}
