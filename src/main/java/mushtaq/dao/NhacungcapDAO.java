package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Nhacungcap;
import mushtaq.entities.NhacungcapMapper;



@Repository
@Transactional
public class NhacungcapDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Nhacungcap nhacungcap) {
		String sql = "INSERT INTO nhacungcap (tennhacungcap, diachi, sodienthoai, email) VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sql, nhacungcap.getTennhacungcap(), nhacungcap.getDiachi(), nhacungcap.getSodienthoai(), nhacungcap.getEmail());
	}

	public void delete(int id) {
		String sql = "DELETE FROM nhacungcap WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Nhacungcap nhacungcap) {
		String sql = "UPDATE nhacungcap SET tennhacungcap = ?, diachi = ?, sodienthoai = ?, email = ? WHERE id = ? ";
		jdbcTemplate.update(sql, nhacungcap.getTennhacungcap(), nhacungcap.getDiachi(), nhacungcap.getSodienthoai(), nhacungcap.getEmail(), nhacungcap.getId());
	}

	public Nhacungcap findById(int id) {
		String sql = "SELECT * FROM nhacungcap WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new NhacungcapMapper(), id);
	}

	public List<Nhacungcap> findAll() {
		String sql = "SELECT * FROM nhacungcap";
		return jdbcTemplate.query(sql, new NhacungcapMapper());
	}

}
