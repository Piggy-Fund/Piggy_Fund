package yly.entity;

import java.util.Date;

//javaBean
public class TUser {
	private long id;
	private String username;
	private String password;
	private String sex;
	private Date brith;
	private String major;
	private String strong;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBrith() {
		return brith;
	}
	public void setBrith(Date brith) {
		this.brith = brith;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getStrong() {
		return strong;
	}
	public void setStrong(String strong) {
		this.strong = strong;
	}
	
	
}
