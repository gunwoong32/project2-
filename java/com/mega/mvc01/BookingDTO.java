package com.mega.mvc01;

public class BookingDTO {

	int bookingId;
	int theaterId;
	String showTime;
	String seatNo;
	String writer;
	String movieTitle;
	String date;
	int MOVIENUM;
	
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public int getTheaterId() {
		return theaterId;
	}
	public void setTheaterId(int theaterId) {
		this.theaterId = theaterId;
	}
	public String getShowTime() {
		return showTime;
	}
	public void setShowTime(String showTime) {
		this.showTime = showTime;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getMOVIENUM() {
		return MOVIENUM;
	}
	public void setMOVIENUM(int mOVIENUM) {
		MOVIENUM = mOVIENUM;
	}
	@Override
	public String toString() {
		return "BookingDTO [bookingId=" + bookingId + ", theaterId=" + theaterId + ", showTime=" + showTime
				+ ", seatNo=" + seatNo + ", writer=" + writer + ", movieTitle=" + movieTitle
				+ ", date=" + date + ", MOVIENUM=" + MOVIENUM + "]";
	}
	
	
	
	
}
