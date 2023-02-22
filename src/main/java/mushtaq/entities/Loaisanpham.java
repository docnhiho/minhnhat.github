package mushtaq.entities;

public class Loaisanpham {

	private int id;
	private String tenloaisp;

	public Loaisanpham() {

	}

//	public Loaisp(String tenloaisp) {
//		this.tenloaisp = tenloaisp;
//
//	}

	
	

	public Loaisanpham(int id, String tenloaisp) {
	this.id = id;
	this.tenloaisp = tenloaisp;
}

	public String toString() {
		return "Loaisanpham [id =" + id + ", tenloaisp=" + tenloaisp + "]";
	}

	

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenloaisp() {
		return tenloaisp;
	}

	public void setTenloaisp(String tenloaisp) {
		this.tenloaisp = tenloaisp;
	}
	// getter - setter

	

}
