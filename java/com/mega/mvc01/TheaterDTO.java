package com.mega.mvc01;

public class TheaterDTO {

	int theaterId;
	String theaterName;
	String informTitle;
	String theaterLatitude;
	String theaterLongitude;
	String theaterTel;
	String theaterAddr;
	String date;
	String movieName;
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getTheaterId() {
		return theaterId;
	}
	public void setTheaterId(int theaterId) {
		this.theaterId = theaterId;
	}
	public String getTheaterName() {
		return theaterName;
	}
	public void setTheaterName(String theaterName) {
		this.theaterName = theaterName;
	}
	public String getInformTitle() {
		return informTitle;
	}
	public void setInformTitle(String informTitle) {
		this.informTitle = informTitle;
	}
	public String getTheaterLatitude() {
		return theaterLatitude;
	}
	public void setTheaterLatitude(String theaterLatitude) {
		this.theaterLatitude = theaterLatitude;
	}
	public String getTheaterLongitude() {
		return theaterLongitude;
	}
	public void setTheaterLongitude(String theaterLongitude) {
		this.theaterLongitude = theaterLongitude;
	}
	public String getTheaterTel() {
		return theaterTel;
	}
	public void setTheaterTel(String theaterTel) {
		this.theaterTel = theaterTel;
	}
	public String getTheaterAddr() {
		return theaterAddr;
	}
	public void setTheaterAddr(String theaterAddr) {
		this.theaterAddr = theaterAddr;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "TheaterDTO [theaterId=" + theaterId + ", theaterName=" + theaterName + ", informTitle=" + informTitle
				+ ", theaterLatitude=" + theaterLatitude + ", theaterLongitude=" + theaterLongitude + ", theaterTel="
				+ theaterTel + ", theaterAddr=" + theaterAddr + ", date=" + date + ", movieName=" + movieName + "]";
	}
	
	
}
