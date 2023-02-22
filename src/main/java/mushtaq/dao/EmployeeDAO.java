package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Employee;
import mushtaq.entities.EmployeeMapper;


@Repository
@Transactional
public class EmployeeDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Employee employee) {
		String sql = "INSERT INTO employee (name,birthday,govermentid,phone,email,address,image,salary, role, username, password) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql, employee.getName(),employee.getBirthday(),
				employee.getGovermentid(),employee.getPhone(),employee.getEmail(),employee.getAddress(),employee.getImage(), employee.getSalary(), 
				employee.getRole(), employee.getUsername(), employee.getPassword());
	}

	public void delete(int employeeid) {
		String sql = "DELETE FROM employee WHERE employeeid = " + employeeid;
		jdbcTemplate.update(sql);
	}
	
	public void update(Employee employee) {
		String sql = "UPDATE employee SET  name = ?, birthday=? , govermentid=?, phone=?, email=?, address=?,image=?,salary=?, role=?, username=?, password=? WHERE employeeid = ? ";
		jdbcTemplate.update(sql, employee.getName(),employee.getBirthday(),
				employee.getGovermentid(),employee.getPhone(),employee.getEmail(),employee.getAddress(),employee.getImage(),employee.getSalary(), 
				employee.getEmployeeid(), employee.getRole(), employee.getUsername(), employee.getPassword());
	}

	public Employee findById(int employeeid) {
		String sql = "select EL.*, RL.rolename from  employee EL inner join  role  RL on EL.role = RL.roleid   WHERE EL.employeeid = ? ;";
		return jdbcTemplate.queryForObject(sql, new EmployeeMapper(), employeeid);
	}

	public List<Employee> findAll() {
		String sql = "select *, em.employeeid ,em.role , em.name , ro.rolename , em.username , em.password from employee em join role ro on em.role = ro.roleid;";
		return jdbcTemplate.query(sql, new EmployeeMapper());
	}
	
	public String ckeck(Employee em) {
		try {
			String sql = "select  count(*) FROM employee where username  = ?";
			String name = jdbcTemplate.queryForObject(sql, new Object[] { em.getUsername() }, String.class);

			return name;
		} catch (Exception e) {
			return null;
		}

	}


}
