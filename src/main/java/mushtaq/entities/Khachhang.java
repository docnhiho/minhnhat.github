package mushtaq.entities;

public class Khachhang {
	private int id;
	private String tenkhachhang;
	private String sdt;
	private String diachi;

	public Khachhang() {
		super();
	}

	public Khachhang(String tenkhachhang, String sdt, String diachi) {
		super();
		this.tenkhachhang = tenkhachhang;
		this.sdt = sdt;
		this.diachi = diachi;
	}

	public Khachhang(int id, String tenkhachhang, String sdt, String diachi) {
		this.id = id;
		this.tenkhachhang = tenkhachhang;
		this.sdt = sdt;
		this.diachi = diachi;

	}

	@Override
	public String toString() {
		return "khachhang [id=" + id + ", tenkhachhang=" + tenkhachhang + ", sdt=" + sdt + ", diachi=" + diachi
				+ "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenkhachhang() {
		return tenkhachhang;
	}

	public void setTenkhachhang(String tenkhachhang) {
		this.tenkhachhang = tenkhachhang;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
}
