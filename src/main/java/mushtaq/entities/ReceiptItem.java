package mushtaq.entities;

import java.sql.Date;

public class ReceiptItem {

	private int receiptid;
	private int sanphamid;
	private int receiptItemQuantity;
	private double receiptItemPrice;
	private double receiptItemTongtien;
	private Date created;
	 private Receipt receipt;
	 private Sanpham sanpham;
	 private  ReceiptItemID id;
	// get name theo id
	private String tensp;
	private double gia;
	private String receiptName;
	private String receiptMail;
	private String receiptAddress;
	private String receiptPhone;

	public ReceiptItem() {
		
	}

	public ReceiptItem( int receiptid, int sanphamid, int receiptItemQuantity,
			double receiptItemPrice, String tensp, double gia, String receiptName, String receiptMail,
			String receiptAddress, String receiptPhone, double receiptItemTongtien, Date created) {
		super();
		this.receiptid = receiptid;
		this.sanphamid = sanphamid;
		this.receiptItemQuantity = receiptItemQuantity;
		this.receiptItemPrice = receiptItemPrice;
		this.tensp = tensp;
		this.gia = gia;
		this.receiptName = receiptName;
		this.receiptMail = receiptMail;
		this.receiptAddress = receiptAddress;
		this.receiptPhone = receiptPhone;
		this.receiptItemTongtien = receiptItemTongtien;
		this.created = created;
	}

	

	public int getReceiptid() {
		return receiptid;
	}

	public void setReceiptid(int receiptid) {
		this.receiptid = receiptid;
	}

	public int getSanphamid() {
		return sanphamid;
	}

	public void setSanphamid(int sanphamid) {
		this.sanphamid = sanphamid;
	}

	public int getReceiptItemQuantity() {
		return receiptItemQuantity;
	}

	public void setReceiptItemQuantity(int receiptItemQuantity) {
		this.receiptItemQuantity = receiptItemQuantity;
	}

	public double getReceiptItemPrice() {
		return receiptItemPrice;
	}

	public void setReceiptItemPrice(double receiptItemPrice) {
		this.receiptItemPrice = receiptItemPrice;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
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

	public double getReceiptItemTongtien() {
		return receiptItemTongtien;
	}

	public void setReceiptItemTongtien(double receiptItemTongtien) {
		this.receiptItemTongtien = receiptItemTongtien;
	}

	public Receipt getReceipt() {
		return receipt;
	}

	public void setReceipt(Receipt receipt) {
		this.receipt = receipt;
	}

	public Sanpham getSanpham() {
		return sanpham;
	}

	public void setSanpham(Sanpham sanpham) {
		this.sanpham = sanpham;
	}

	public ReceiptItemID getId() {
		return id;
	}

	public Date getCreated() {
		return created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}
	
	
	
	
}