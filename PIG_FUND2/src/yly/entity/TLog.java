package yly.entity;

import java.util.Date;

//日志实体类
public class TLog {
	private long id;
	private String ip;
	private Date vistTime;
	private String uri; 
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Date getVistTime() {
		return vistTime;
	}
	public void setVistTime(Date vistTime) {
		this.vistTime = vistTime;
	}
	public String getUri() {
		return uri;
	}
	public void setUrl(String uri) {
		this.uri = uri;
	}
}
