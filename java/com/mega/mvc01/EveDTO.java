package com.mega.mvc01;

public class EveDTO {
	
	String eveid;
	String evename;
	String evecontent;
	String eveimg;
	
	
	public String getEveid() {
		return eveid;
	}
	public void setEveid(String eveid) {
		this.eveid = eveid;
	}
	public String getEvename() {
		return evename;
	}
	public void setEvename(String evename) {
		this.evename = evename;
	}
	public String getEvecontent() {
		return evecontent;
	}
	public void setEvecontent(String evecontent) {
		this.evecontent = evecontent;
	}
	public String getEveimg() {
		return eveimg;
	}
	public void setEveimg(String eveimg) {
		this.eveimg = eveimg;
	}
	@Override
	public String toString() {
		return "EveDTO [eveid=" + eveid + ", evename=" + evename + ", evecontent=" + evecontent + ", eveimg=" + eveimg
				+ "]";
	}
	
	
	
	

}
