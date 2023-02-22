package mushtaq.entities;

public class Phieunhapct {
	
	private int id;
	private int maphieunhap;
	private String tensanpham;
	private String loaisanpham;
	private int soluong;
	private double gia;
	private double tongtien;
	
	
	public Phieunhapct() {
	}

	public Phieunhapct( int maphieunhap, String loaisanpham, String tensanpham,int soluong, double gia, double tongtien) {
		this.maphieunhap = maphieunhap;
		this.tensanpham = tensanpham;
		this.loaisanpham = loaisanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.tongtien = tongtien;
	}

	public Phieunhapct(int id, int maphieunhap, String tensanpham, String loaisanpham, int soluong, double gia, double tongtien) {
		this.id = id;
		this.maphieunhap = maphieunhap;
		this.tensanpham = tensanpham;
		this.loaisanpham = loaisanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.tongtien = tongtien;
	}

	@Override
	public String toString() {
		return "Phieunhapct [id=" + id + ", maphieunhap=" + maphieunhap +", tensanpham=" + tensanpham +", loaisanpham=" + loaisanpham +", soluong=" + soluong +", gia=" + gia +", tongtien=" + tongtien +" ]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public int getMaphieunhap() {
		return maphieunhap;
	}

	public void setMaphieunhap(int maphieunhap) {
		this.maphieunhap = maphieunhap;
	}

	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public String getLoaisanpham() {
		return loaisanpham;
	}

	public void setLoaisanpham(String loaisanpham) {
		this.loaisanpham = loaisanpham;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}

	public double getTongtien() {
		return tongtien;
	}

	public void setTongtien(double tongtien) {
		this.tongtien = tongtien;
	}

	

}
