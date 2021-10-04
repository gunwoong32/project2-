package com.mega.mvc01;

public class ProductListDTO {
	private String listId;
	private String productName;
	private String productAmount;
	private int productPrice;
	
	
	public String getListId() {
		return listId;
	}
	public void setListId(String listId) {
		this.listId = listId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductAmount() {
		return productAmount;
	}
	public void setProductAmount(String productAmount) {
		this.productAmount = productAmount;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	@Override
	public String toString() {
		return "ProductListDTO [listId=" + listId + ", productName=" + productName + ", productAmount=" + productAmount
				+ ", productPrice=" + productPrice + "]";
	}
	
	
	
	
}
