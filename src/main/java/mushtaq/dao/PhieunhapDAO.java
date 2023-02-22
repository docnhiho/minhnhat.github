package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Phieunhap;
import mushtaq.entities.PhieunhapMapper;

@Repository
@Transactional
public class PhieunhapDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void save(Phieunhap phieunhap) {
		String sql = "INSERT INTO phieunhap (manhacungcap,loaisanpham, tensanpham) VALUES (?,?,?)";
		jdbcTemplate.update(sql, phieunhap.getManhacungcap(), phieunhap.getLoaisanpham(), phieunhap.getTensanpham());
	}

	public void delete(int id) {
		String sql = "DELETE FROM phieunhap WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	public void update(Phieunhap phieunhap) {
		String sql = "UPDATE phieunhap SET manhacungcap = ?, loaisanpham = ?,  tensanpham = ? WHERE id = ? ";
		jdbcTemplate.update(sql, phieunhap.getManhacungcap(), phieunhap.getLoaisanpham(), phieunhap.getTensanpham(), phieunhap.getId());
	}

	public Phieunhap findById(int id) {
		String sql = "select PN.*, NCC.tennhacungcap from phieunhap PN inner join nhacungcap NCC on PN.manhacungcap = NCC.id WHERE PN.id = ?";
//		return jdbcTemplate.queryForObject(sql, new PhieunhapMapper(), id);
		return (Phieunhap) jdbcTemplate.queryForObject(sql, new Object[] { id },
				new BeanPropertyRowMapper(Phieunhap.class));
	}

	public List<Phieunhap> findAll() {
		String sql = "select PN.*, NCC.tennhacungcap from phieunhap PN inner join nhacungcap NCC on PN.manhacungcap = NCC.id";
		return jdbcTemplate.query(sql, new PhieunhapMapper());
	}
}
