package com.datastr.VO;

public class ItemVO {
	
	private int idno;
	private String name;
	private String company;
	private int price;
	private int count;
	public int getIdno() {
		return idno;
	}
	public void setIdno(int idno) {
		this.idno = idno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "ItemVO [idno=" + idno + ", name=" + name + ", company=" + company + ", price=" + price + ", count="
				+ count + "]";
	}
	
}
