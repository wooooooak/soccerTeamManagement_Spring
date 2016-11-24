package com.datastr.VO;

public class MarketVO {

	private String name;
	private String curclub;
	private String side_footer;
	private String position;
	private String gender;
	private String country;
	private String language;
	
	private int birth;
	private int idno;
	private int goal;
	private int grade;
	private int assist;
	
	private MarketVO(){}//default constructor
	
	
	public MarketVO(FplayerVO fplayerVO){
		this.name = fplayerVO.getName();
		this.curclub = fplayerVO.getCurclub();
		this.side_footer= fplayerVO.getSide_footer();
		this.position= fplayerVO.getPosition();
		this.gender= fplayerVO.getGender();
		this.country= fplayerVO.getCountry();
		this.language= fplayerVO.getLanguage();
		this.birth= fplayerVO.getBirth();
		this.goal= fplayerVO.getGoal();
		this.grade= fplayerVO.getGrade();
		this.assist = fplayerVO.getAssist();
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
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
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
	@Override
	public String toString() {
		return "MarketVO [name=" + name + ", curclub=" + curclub + ", side_footer=" + side_footer + ", position="
				+ position + ", gender=" + gender + ", country=" + country + ", language=" + language + ", birth="
				+ birth + ", idno=" + idno + ", goal=" + goal + ", grade=" + grade + ", assist=" + assist + "]";
	}
	
	
	
	
}
