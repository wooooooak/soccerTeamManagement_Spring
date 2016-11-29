package com.datastr.VO;

import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

public class UpdateStaffVO {
	private int pno;
	private int salary;
	private String position;
	private String tel;
	private String career;
	private Date contract_end_time;
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	
	public Date getContract_end_time() {
		return contract_end_time;
	}
	public void setContract_end_time(String contract_end_time) {
		Calendar calendar = Calendar.getInstance();

		StringTokenizer tokenizer = new StringTokenizer(contract_end_time, "-");
		
		int year = Integer.parseInt(tokenizer.nextToken());
		int month = Integer.parseInt(tokenizer.nextToken());
		int date = Integer.parseInt(tokenizer.nextToken());
		calendar.set(year, month-1, date);
		
		this.contract_end_time = calendar.getTime();
	}
	@Override
	public String toString() {
		return "UpdateStaffVO [pno=" + pno + ", salary=" + salary + ", position=" + position + ", tel=" + tel
				+ ", career=" + career + ", contract_end_time=" + contract_end_time + "]";
	}
	
	
}
