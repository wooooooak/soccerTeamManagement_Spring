package com.datastr.VO;

import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

public class FplayerVO {

	private String name;
	private String prevclub;
	private String curclub;
	private String side_footer;
	private String position;
	private String gender;
	private String career;
	private String agent;
	private String country;
	private String language;
	
	private int birth;
	private int idno;
	private int goal;
	private int grade;
	private int salary;
	private int transfer_fee;
	private int backno;
	private int assist;
	private Date contract_end_time;
	
	public FplayerVO(){}
	
	public FplayerVO(MarketVO marketVO){
		this.name = marketVO.getName();
		this.curclub = "our";
		this.side_footer = marketVO.getSide_footer();
		this.position = marketVO.getPosition();
		this.gender = marketVO.getGender();
		this.country = marketVO.getCountry();
		this.language = marketVO.getLanguage();
		this.birth = marketVO.getBirth();
		this.goal = marketVO.getGoal();
		this.grade = marketVO.getGrade();
		this.assist = marketVO.getAssist();
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public String getPrevclub() {
		return prevclub;
	}
	public void setPrevclub(String prevclub) {
		this.prevclub = prevclub;
	}
	public String getCurclub() {
		return curclub;
	}
	public void setCurclub(String curclub) {
		this.curclub = curclub;
	}
	public String getSide_footer() {
		return side_footer;
	}
	public void setSide_footer(String side_footer) {
		this.side_footer = side_footer;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
	public int getIdno() {
		return idno;
	}
	public void setIdno(int idno) {
		this.idno = idno;
	}
	public int getGoal() {
		return goal;
	}
	public void setGoal(int goal) {
		this.goal = goal;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getTransfer_fee() {
		return transfer_fee;
	}
	public void setTransfer_fee(int transfer_fee) {
		this.transfer_fee = transfer_fee;
	}
	public int getBackno() {
		return backno;
	}
	public void setBackno(int backno) {
		this.backno = backno;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
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
		return "FplayerVO [name=" + name + ", birth=" + birth + ", prevclub=" + prevclub + ", curclub=" + curclub
				+ ", side_footer=" + side_footer + ", position=" + position + ", gender=" + gender + ", career="
				+ career + ", agent=" + agent + ", idno=" + idno + ", goal=" + goal + ", grade=" + grade + ", salary="
				+ salary + ", transfer_fee=" + transfer_fee + ", backno=" + backno + ", assist=" + assist
				+ ", contract_end_time=" + contract_end_time + "]";
	}
	
	

	
}
