package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Khachhang;
import mushtaq.entities.KhachhangMapper;

@Repository
@Transactional
public class KhachhangDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Khachhang khachhang) {
		String sql = "INSERT INTO khachhang (tenkhachhang, sdt, diachi) VALUES (?, ?, ?)";
		jdbcTemplate.update(sql, khachhang.getTenkhachhang(), khachhang.getSdt(), khachhang.getDiachi());
	}

	public void delete(int id) {
		String sql = "DELETE FROM khachhang WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Khachhang khachhang) {
		String sql = "UPDATE khachhang SET tenkhachhang = ?, sdt = ?, diachi = ? WHERE id = ? ";
		jdbcTemplate.update(sql, khachhang.getTenkhachhang(), khachhang.getSdt(), khachhang.getDiachi(),khachhang.getId());
	}

	public Khachhang findById(int id) {
		String sql = "SELECT * FROM khachhang WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new KhachhangMapper(), id);
	}

	public List<Khachhang> findAll() {
		String sql = "SELECT * FROM khachhang";
		return jdbcTemplate.query(sql, new KhachhangMapper());
	}

}
