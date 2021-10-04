package com.mega.mvc01;

import java.sql.Date;

public class MovieReviewDTO {
int REVIEWNUM;
String MOVIENUM;
String MOVIETITLE;
int GRADE;
String CREATEID;
String TITLE;
String CONTENT;
Date CREATEDATE;
//int startNum;

int VIEWCOUNT=0;

public int getREVIEWNUM() {
	return REVIEWNUM;
}
public void setREVIEWNUM(int rEVIEWNUM) {
	REVIEWNUM = rEVIEWNUM;
}
public String getMOVIENUM() {
	return MOVIENUM;
}
public void setMOVIENUM(String mOVIENUM) {
	MOVIENUM = mOVIENUM;
}
public String getMOVIETITLE() {
	return MOVIETITLE;
}
public void setMOVIETITLE(String mOVIETITLE) {
	MOVIETITLE = mOVIETITLE;
}
public int getGRADE() {
	return GRADE;
}
public void setGRADE(int gRADE) {
	GRADE = gRADE;
}
public String getCREATEID() {
	return CREATEID;
}
public void setCREATEID(String cREATEID) {
	CREATEID = cREATEID;
}
public String getTITLE() {
	return TITLE;
}
public void setTITLE(String tITLE) {
	TITLE = tITLE;
}
public String getCONTENT() {
	return CONTENT;
}
public void setCONTENT(String cONTENT) {
	CONTENT = cONTENT;
}
public Date getCREATEDATE() {
	return CREATEDATE;
}
public void setCREATEDATE(Date cREATEDATE) {
	CREATEDATE = cREATEDATE;
}
public int getVIEWCOUNT() {
	return VIEWCOUNT;
}
public void setVIEWCOUNT(int vIEWCOUNT) {
	VIEWCOUNT = vIEWCOUNT;
}
@Override
public String toString() {
	return "MovieReviewDTO [REVIEWNUM=" + REVIEWNUM + ", MOVIENUM=" + MOVIENUM + ", MOVIETITLE=" + MOVIETITLE
			+ ", GRADE=" + GRADE + ", CREATEID=" + CREATEID + ", TITLE=" + TITLE + ", CONTENT=" + CONTENT
			+ ", CREATEDATE=" + CREATEDATE + ", VIEWCOUNT=" + VIEWCOUNT + "]";
}




}
