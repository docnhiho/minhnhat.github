package mushtaq.entities;

public class Sanpham {


	private int id;
	private int loaisanpham;
	private String tensanpham;
	private int nhacungcap;
	private double gia;
	private String mota;
	private String image;
	private int sanphamStatus;
	//get name by id
	private String loaisp;
	private String tenncc;
	
	public Sanpham() {
		
	}
	
	public Sanpham(int id,int loaisanpham, String tensanpham, int nhacungcap, double gia, String mota, String image, int sanphamStatus, String loaisp, String tenncc ) {
		super();
		this.id = id;
		this.loaisanpham = loaisanpham;
		this.tensanpham = tensanpham;
		this.nhacungcap = nhacungcap;
		this.gia = gia;
		this.mota = mota;
		this.image = image;
		this.sanphamStatus = sanphamStatus;
		this.loaisp = loaisp;
		this.tenncc = tenncc;
	}
	
	@Override
	public String toString() {
		return "Sanpham [id=" + id + ", loaisanpham=" + loaisanpham + ", tensanpham=" + tensanpham + ", "
				+ "nhacungcap=" + nhacungcap + ", gia=" + gia + ", mota=" + mota + ",  image=" + image + ", sanphamStatus =" + sanphamStatus + ", loaisp=" + loaisp + ", tenncc=" + tenncc + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLoaisanpham() {
		return loaisanpham;
	}

	public void setLoaisanpham(int loaisanpham) {
		this.loaisanpham = loaisanpham;
	}

	public String getTensanpham() {
		return tensanpham;
	}

	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}

	public int getNhacungcap() {
		return nhacungcap;
	}

	public void setNhacungcap(int nhacungcap) {
		this.nhacungcap = nhacungcap;
	}

	public double getGia() {
		return gia;
	}

	public void setGia(double gia) {
		this.gia = gia;
	}

	public String getMota() {
		return mota;
	}

	public void setMota(String mota) {
		this.mota = mota;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}


	public int getSanphamStatus() {
		return sanphamStatus;
	}

	public void setSanphamStatus(int sanphamStatus) {
		this.sanphamStatus = sanphamStatus;
	}

	public String getLoaisp() {
		return loaisp;
	}

	public void setLoaisp(String loaisp) {
		this.loaisp = loaisp;
	}

	public String getTenncc() {
		return tenncc;
	}

	public void setTenncc(String tenncc) {
		this.tenncc = tenncc;
	}

	

}
