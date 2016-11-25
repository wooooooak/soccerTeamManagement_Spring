package com.datastr.VO;

import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

public class UpdatePlayerVO {
	
	
	private int idno;
	private int salary;
	private int goal;
	private int assist;
	private int grade;
	private int backno;
	private Date contract_end_time;
	public int getIdno() {
		return idno;
	}
	public void setIdno(int idno) {
		this.idno = idno;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getGoal() {
		return goal;
	}
	public void setGoal(int goal) {
		this.goal = goal;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getBackno() {
		return backno;
	}
	public void setBackno(int backno) {
		this.backno = backno;
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
		return "UpdatePlayerVO [idno=" + idno + ", salary=" + salary + ", goal=" + goal + ", assist=" + assist
				+ ", grade=" + grade + ", backno=" + backno + ", contract_end_time=" + contract_end_time + "]";
	}

	
	
	
}
