package com.po;
import java.util.ArrayList;
import com.po.GoodInfo;
public class ShopCart {
	private ArrayList<GoodInfo> cartList=new ArrayList<GoodInfo>();
	
	public ShopCart(){
		
	}
	public ArrayList<GoodInfo> getCartList() {
		return cartList;
	}
	public void setCartList(ArrayList<GoodInfo> cartList) {
		this.cartList = cartList;
	}
	public void addItem(GoodInfo single){
		if(single!=null){
			if(cartList.size()==0){
				GoodInfo item=new GoodInfo();
				item.setId(single.getId());
				item.setName(single.getName());
				item.setNum(1);
				item.setPrice(single.getPrice());
				item.setPic(single.getPic());
				cartList.add(item);
			}
			else{
				int i=0;
				for(;i<cartList.size();i++){
					GoodInfo item=cartList.get(i);
					if(item.getName().equals(single.getName())){
						item.setNum(item.getNum()+1);
						break;
					}
				}
				if(i>=cartList.size()){
					GoodInfo item=new GoodInfo();
					item.setId(single.getId());
					item.setName(single.getName());
					item.setNum(1);
					item.setPrice(single.getPrice());
					item.setPic(single.getPic());
					cartList.add(item);
				}
			}
		}
	}
	public void removeItem(String name){
		for(int i=0;i<cartList.size();i++){
			GoodInfo item=cartList.get(i);
			if(item.getName().equals(name)){
				if(item.getNum()>1){
					item.setNum(item.getNum()-1);
					break;
				}
				else if(item.getNum()==1)
					cartList.remove(i);
			}
		}
	}
	public void clearCart(){
		cartList.clear();
	}
	
}
