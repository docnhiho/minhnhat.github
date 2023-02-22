package mushtaq.entities;

public class Nhacungcap {
	private int id;
	private String tennhacungcap;
	private String diachi;
	private String sodienthoai;
	private String email;

	public Nhacungcap() {
	}

	public Nhacungcap(String tennhacungcap, String diachi, String sodienthoai, String email) {
		this.tennhacungcap = tennhacungcap;
		this.diachi = diachi;
		this.sodienthoai = sodienthoai;
		this.email = email;
	}

	public Nhacungcap(int id, String tennhacungcap, String diachi, String sodienthoai, String email) {
		this.id = id;
		this.tennhacungcap = tennhacungcap;
		this.diachi = diachi;
		this.sodienthoai = sodienthoai;
		this.email = email;
	}

	@Override
	public String toString() {
		return "nhacungcap [id=" + id + ", tennhacungcap=" + tennhacungcap + ", diachi=" + diachi + ", sodienthoai =" + sodienthoai + ", email =" + email + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTennhacungcap() {
		return tennhacungcap;
	}

	public void setTennhacungcap(String tennhacungcap) {
		this.tennhacungcap = tennhacungcap;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSodienthoai() {
		return sodienthoai;
	}

	public void setSodienthoai(String sodienthoai) {
		this.sodienthoai = sodienthoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
