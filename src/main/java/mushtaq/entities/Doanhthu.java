package mushtaq.entities;

import java.sql.Date;

public class Doanhthu {
	
	private Date date;
	private int month;
	private int year;
	private float totalmoney;
	
	public Doanhthu() {
		
	}
	
	public Doanhthu(Date date, int month, int year, float totalmoney) {
		super();
		this.date = date;
		this.month = month;
		this.year = year;
		this.totalmoney = totalmoney;
	}



	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public float getTotalmoney() {
		return totalmoney;
	}

	public void setTotalmoney(float totalmoney) {
		this.totalmoney = totalmoney;
	}
	
	
	

}
