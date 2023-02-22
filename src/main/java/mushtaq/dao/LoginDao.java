package mushtaq.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Employee;


    
@Repository
@Transactional
public class LoginDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public String xacnhan(Employee em) {
		try {
			String sql = "SELECT ro.rolename FROM employee em ,role ro where  ro.roleid = em.role and em.username = ? and em.password = ?";

			String rolename = jdbcTemplate.queryForObject(sql, new Object[] { em.getUsername(), em.getPassword() },
					String.class);

			return rolename;
		} catch (Exception e) {
			return null;
		}

	}
	public String user(Employee em) {
		try {
			String sql = "SELECT em.username FROM employee em ,role ro where  ro.roleid = em.role and em.username = ? and em.password = ?";

			String name = jdbcTemplate.queryForObject(sql, new Object[] { em.getUsername(), em.getPassword() },
					String.class);

			return name;
		} catch (Exception e) {
			return null;
		}

	}
	public void ChangePassword(Employee em) {
		String sql = " update had_hotel.account set  password = ? where username = ?";
		jdbcTemplate.update(sql, em.getPassword(), em.getUsername());
	}
	public String getId(Employee em) {
		try {
			String sql = "SELECT employeeid FROM employee where  username like "+'?'+" and password like "+'?'+";";

			String id = jdbcTemplate.queryForObject(sql, new Object[] { em.getUsername(), em.getPassword() },
					String.class);

			return id;
		} catch (Exception ex) {
			return null;
		}

	}

}
