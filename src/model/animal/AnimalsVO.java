package model;

import java.sql.Date;

public class AnimalsVO {
	private String animalID; //
	private String popfile;   //
	private String color; //
	private String sex; //
	private String age; //
	private String weight; //
	private String neuter; //
	private String happenDate; //
	private String happenPlace; //
	private String spacialMark; // 
	private String state;			// 
	private String careName;		//
	private String careTel;			// 
	private String careAddr;			// 
	private int bookNum;			// 
	public AnimalsVO() {
		super();
	}
	public AnimalsVO(String animalID, String popfile, String color, String sex, String age, String weight,
			String neuter, String happenDate, String happenPlace, String spacialMark, String state, String careName,
			String careTel, String careAddr, int bookNum) {
		super();
		this.animalID = animalID;
		this.popfile = popfile;
		this.color = color;
		this.sex = sex;
		this.age = age;
		this.weight = weight;
		this.neuter = neuter;
		this.happenDate = happenDate;
		this.happenPlace = happenPlace;
		this.spacialMark = spacialMark;
		this.state = state;
		this.careName = careName;
		this.careTel = careTel;
		this.careAddr = careAddr;
		this.bookNum = bookNum;
	}
	public String getAnimalID() {
		return animalID;
	}
	public void setAnimalID(String animalID) {
		this.animalID = animalID;
	}
	public String getPopfile() {
		return popfile;
	}
	public void setPopfile(String profile) {
		this.popfile = profile;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getNeuter() {
		return neuter;
	}
	public void setNeuter(String neuter) {
		this.neuter = neuter;
	}
	public String getHappenDate() {
		return happenDate;
	}
	public void setHappenDate(String happenDate) {
		this.happenDate = happenDate;
	}
	public String getHappenPlace() {
		return happenPlace;
	}
	public void setHappenPlace(String happenPlace) {
		this.happenPlace = happenPlace;
	}
	public String getSpacialMark() {
		return spacialMark;
	}
	public void setSpacialMark(String spacialMark) {
		this.spacialMark = spacialMark;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCareName() {
		return careName;
	}
	public void setCareName(String careName) {
		this.careName = careName;
	}
	public String getCareTel() {
		return careTel;
	}
	public void setCareTel(String careTel) {
		this.careTel = careTel;
	}
	public String getCareAddr() {
		return careAddr;
	}
	public void setCareAddr(String careAddr) {
		this.careAddr = careAddr;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	@Override
	public String toString() {
		return "AnimalsVO [animalID=" + animalID + ", popfile=" + popfile + ", color=" + color + ", sex=" + sex
				+ ", age=" + age + ", weight=" + weight + ", neuter=" + neuter + ", happenDate=" + happenDate
				+ ", happenPlace=" + happenPlace + ", spacialMark=" + spacialMark + ", state=" + state + ", careName="
				+ careName + ", careTel=" + careTel + ", careAddr=" + careAddr + ", bookNum=" + bookNum + "]";
	}
	
	
	
}
