package com.mega.mvc01;

public class PersonalInformDTO {
	private String piid;
	private String pw;
	private String name;
	private String birth;
	private String tel;
	private String email;
	private String ticketmachine;
	private String mygigabox;
	private String terms;
	private String marketing;
	private String method;
	
	public String getPiid() {
		return piid;
	}
	public void setPiid(String piid) {
		this.piid = piid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTicketmachine() {
		return ticketmachine;
	}
	public void setTicketmachine(String ticketmachine) {
		this.ticketmachine = ticketmachine;
	}
	public String getMygigabox() {
		return mygigabox;
	}
	public void setMygigabox(String mygigabox) {
		this.mygigabox = mygigabox;
	}
	public String getTerms() {
		return terms;
	}
	public void setTerms(String terms) {
		this.terms = terms;
	}
	public String getMarketing() {
		return marketing;
	}
	public void setMarketing(String marketing) {
		this.marketing = marketing;
	}
	public String getMethod() {
		return method;
	}
	public void setMethod(String method) {
		this.method = method;
	}
	@Override
	public String toString() {
		return "PersonalInformDTO [piid=" + piid + ", pw=" + pw + ", name=" + name + ", birth=" + birth + ", tel=" + tel
				+ ", email=" + email + ", ticketmachine=" + ticketmachine + ", mygigabox=" + mygigabox + ", terms="
				+ terms + ", marketing=" + marketing + ", method=" + method + "]";
	}
	
	
	

}