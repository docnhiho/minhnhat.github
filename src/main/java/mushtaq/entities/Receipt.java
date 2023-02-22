package mushtaq.entities;

import java.sql.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Receipt {

	private int id;
	private int employeeid;
	private String receiptName;
	private String receiptMail;
	private String receiptAddress;
	private String receiptPhone;
	private int receiptStatus;
	private Date receiptDate;
	private String paymentStatus;
	private Set<ReceiptItem> receiptitem = new HashSet<ReceiptItem>(0);

	public Receipt() {
	}

	public Receipt(int id, int employeeid, String receiptName, String receiptMail, String receiptAddress, String receiptPhone,
			int receiptStatus, Date receiptDate, String paymentStatus) {
		super();
		this.id = id;
		this.employeeid = employeeid;
		this.receiptName = receiptName;
		this.receiptMail = receiptMail;
		this.receiptAddress = receiptAddress;
		this.receiptPhone = receiptPhone;
		this.receiptStatus = receiptStatus;
		this.receiptDate = receiptDate;
		this.paymentStatus = paymentStatus;
	}
	
	public Receipt(int id, int employeeid,String receiptName, String receiptMail, String receiptAddress, String receiptPhone,
			int receiptStatus, Date receiptDate, String paymentStatus, Set<ReceiptItem> receiptitem) {
		super();
		this.id = id;
		this.employeeid = employeeid;
		this.receiptName = receiptName;
		this.receiptMail = receiptMail;
		this.receiptAddress = receiptAddress;
		this.receiptPhone = receiptPhone;
		this.receiptStatus = receiptStatus;
		this.receiptDate = receiptDate;
		this.paymentStatus = paymentStatus;
		this.receiptitem = receiptitem;
	}

	@Override
	public String toString() {
		return "Receipt [id=" + id + ", receiptName=" + receiptName + ", receiptMail=" + receiptMail + ","
				+ " receiptAddress=" + receiptAddress + ", receiptPhone=" + receiptPhone + ", receiptDate= "
				+ receiptDate + ", receiptStatus=" + receiptStatus + ", paymentStatus=" + paymentStatus + "]";
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getReceiptName() {
		return receiptName;
	}

	public void setReceiptName(String receiptName) {
		this.receiptName = receiptName;
	}

	public String getReceiptMail() {
		return receiptMail;
	}

	public void setReceiptMail(String receiptMail) {
		this.receiptMail = receiptMail;
	}

	public String getReceiptAddress() {
		return receiptAddress;
	}

	public void setReceiptAddress(String receiptAddress) {
		this.receiptAddress = receiptAddress;
	}

	public String getReceiptPhone() {
		return receiptPhone;
	}

	public void setReceiptPhone(String receiptPhone) {
		this.receiptPhone = receiptPhone;
	}
//
	public Set<ReceiptItem> getReceiptitem() {
		return receiptitem;
	}
	public void setReceiptitem(Set<ReceiptItem> receiptitem) {
		this.receiptitem = receiptitem;
	}
//

	public int getReceiptStatus() {
		return receiptStatus;
	}


	public void setReceiptStatus(int receiptStatus) {
		this.receiptStatus = receiptStatus;
	}

	public String getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(String paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Date getReceiptDate() {
		return receiptDate;
	}

	public void setReceiptDate(Date receiptDate) {
		this.receiptDate = receiptDate;
	}

	public int getEmployeeid() {
		return employeeid;
	}

	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}


	

}
