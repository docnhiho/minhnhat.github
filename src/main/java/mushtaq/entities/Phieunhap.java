package mushtaq.entities;

public class Phieunhap {
	private int id;
	private int manhacungcap;
	private String loaisanpham;
	private String tensanpham;
	//get name by id
		private String tenncc;
		

	public Phieunhap() {
	}


	public Phieunhap(int id, int manhacungcap,String loaisanpham, String tensanpham, String tenncc) {
		super();
		this.id = id;
		this.manhacungcap = manhacungcap;
		this.loaisanpham = loaisanpham;
		this.tensanpham = tensanpham;
		this.tenncc = tenncc;
		

	}

	@Override
	public String toString() {
		return "Phieunhap [id=" + id + ", manhacungcap=" + manhacungcap +  ", tenncc=" + tenncc + ", loaisanpham=" + loaisanpham + ", tensanpham=" + tensanpham + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getManhacungcap() {
		return manhacungcap;
	}

	public void setManhacungcap(int manhacungcap) {
		this.manhacungcap = manhacungcap;
	}


	public String getTenncc() {
		return tenncc;
	}


	public void setTenncc(String tenncc) {
		this.tenncc = tenncc;
	}


	public String getLoaisanpham() {
		return loaisanpham;
	}


	public void setLoaisanpham(String loaisanpham) {
		this.loaisanpham = loaisanpham;
	}


	public String getTensanpham() {
		return tensanpham;
	}


	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}



}
