package com.mega.mvc01;

import java.sql.Date;


public class CreateAskDTO {
int ASKNUM;
String THEATERID;
String THEATERNAME;
String PIID;
String TITLE;
String CONTENT;
Date CREATEDATE;
String REPLY="X";
int VIEWCOUNT=0;



public int getASKNUM() {
	return ASKNUM;
}



public void setASKNUM(int aSKNUM) {
	ASKNUM = aSKNUM;
}



public String getTHEATERID() {
	return THEATERID;
}



public void setTHEATERID(String tHEATERID) {
	THEATERID = tHEATERID;
}



public String getTHEATERNAME() {
	return THEATERNAME;
}



public void setTHEATERNAME(String tHEATERNAME) {
	THEATERNAME = tHEATERNAME;
}



public String getPIID() {
	return PIID;
}



public void setPIID(String pIID) {
	PIID = pIID;
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



public String getREPLY() {
	return REPLY;
}



public void setREPLY(String rEPLY) {
	REPLY = rEPLY;
}



public int getVIEWCOUNT() {
	return VIEWCOUNT;
}



public void setVIEWCOUNT(int vIEWCOUNT) {
	VIEWCOUNT = vIEWCOUNT;
}



@Override
public String toString() {
	return "CreateAskDTO [ASKNUM=" + ASKNUM + ", THEATERID=" + THEATERID + ", THEATERNAME=" + THEATERNAME + ", PIID="
			+ PIID + ", TITLE=" + TITLE + ", CONTENT=" + CONTENT + ", CREATEDATE=" + CREATEDATE
			+ "]";
}




}
