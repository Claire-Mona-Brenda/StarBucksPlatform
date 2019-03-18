package com.po;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import com.po.GoodInfo;
public class Order {
	private String name;
	private int id;
	private double price;
	private int num;
	private java.util.Date time;
	private String ptime;
	private double total_price;
	private String pic;
	private ArrayList<Order>orderList=new ArrayList<Order>();
	public Order(){}
	public void addOrder(GoodInfo single){
		this.setId(single.getId());
		this.setName(single.getName());
		this.setNum(single.getNum());
		this.setPrice(single.getPrice());
		this.setTotal_price(single.getNum()*single.getPrice());
		this.setPic(single.getPic());
	
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setPTime(){
		this.time=new Date();
		SimpleDateFormat format=new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		this.ptime=format.format(this.time);
	}
	public String getPTime(){
		return ptime;
	}
	public double getTotal_price() {
		return total_price;
	}
	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}
	public ArrayList<Order> getOrderList() {
		return orderList;
	}
	public void setOrderList(ArrayList<Order> orderList) {
		this.orderList = orderList;
	}

}
