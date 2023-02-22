package mushtaq.entities;

import java.sql.Date;

public class Employee {
	private int employeeid;
	private String name;
	private Date birthday;
	private String  govermentid;
	private String phone;
	private String email;
	private String address;
	private String image;
	private Double salary;
	
	private int role;
	private String username;
	private String password;
	private String rolename;
	
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(int employeeid, String name, Date birthday, String govermentid, String phone, String email,
			String address, String image, Double salary, int role, String username, String password, String rolename) {
		super();
		this.employeeid = employeeid;
		this.name = name;
		this.birthday = birthday;
		this.govermentid = govermentid;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.image = image;
		this.salary = salary;
		this.role = role;
		this.username = username;
		this.password = password;
		this.rolename = rolename;
	}
	
	
	
	
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public int getEmployeeid() {
		return employeeid;
	}
	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getGovermentid() {
		return govermentid;
	}
	public void setGovermentid(String govermentid) {
		this.govermentid = govermentid;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	
	
	
}

