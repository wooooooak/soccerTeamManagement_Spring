package com.datastr.VO;

import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

public class StaffVO {

	private int pno;
	private int salary;
	private String name;
	private String position;
	private String tel;
	private String country;
	private String language;
	private String birth;
	private String career;
	private String gender;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
		calendar.set(year, month, date);
		
		this.contract_end_time = calendar.getTime();
	}
	
	
	
}
