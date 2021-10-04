package com.mega.mvc01;

public class StoreDTO {
	
	private int productPrice;
	private String productName;
	private int productAmount;
	private String piid;
	private int total;
	
	
	
	public String getPiid() {
		return piid;
	}
	public void setPiid(String piid) {
		this.piid = piid;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getProductAmount() {
		return productAmount;
	}
	public void setProductAmount(int productAmount) {
		this.productAmount = productAmount;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	@Override
	public String toString() {
		return "StoreDTO [productPrice=" + productPrice + ", productName=" + productName + ", productAmount="
				+ productAmount + ", piid=" + piid + ", total=" + total + "]";
	}
	
	
	
	
	
	
	
}
