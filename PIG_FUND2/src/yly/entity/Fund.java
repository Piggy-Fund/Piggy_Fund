package yly.entity;

import java.util.Date;

public class Fund {
	private String id;
	private String name;
	private String fundtype;
	private String risklevel;
	private float charge;
	private float average;
	private float sum;
	private float dailygrowth;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFundtype() {
		return fundtype;
	}
	public void setFundtype(String fundtype) {
		this.fundtype = fundtype;
	}
	public String getRisklevel() {
		return risklevel;
	}
	public void setRisklevel(String risklevel) {
		this.risklevel = risklevel;
	}
	public float getCharge() {
		return charge;
	}
	public void setCharge(float charge) {
		this.charge = charge;
	}
	public float getAverage() {
		return average;
	}
	public void setAverage(float average) {
		this.average = average;
	}
	public float getSum() {
		return sum;
	}
	public void setSum(float sum) {
		this.sum = sum;
	}
	public float getDailygrowth() {
		return dailygrowth;
	}
	public void setDailygrowth(float dailygrowth) {
		this.dailygrowth = dailygrowth;
	}
	
}
