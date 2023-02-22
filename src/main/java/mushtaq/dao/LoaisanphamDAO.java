package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Loaisanpham;
import mushtaq.entities.LoaisanphamMapper;


@Repository
@Transactional
public class LoaisanphamDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void save(Loaisanpham loaisanpham) {
		String sql ="INSERT INTO loaisanpham (tenloaisp) VALUES (?)";
		jdbcTemplate.update(sql, loaisanpham.getTenloaisp());
	}
	
	public void delete(int id) {
		String sql = "DELETE FROM loaisanpham WHERE id = " + id;
		jdbcTemplate.update(sql);
	}
	
	public void update(Loaisanpham loaisanpham) {
		String sql = "UPDATE loaisanpham set tenloaisp = ? WHERE id = ?";
		jdbcTemplate.update(sql, loaisanpham.getTenloaisp(), loaisanpham.getId());
	}
	
	
	public List<Loaisanpham> findAllById(int loaispid) {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham\r\n" + 
				"  LSP on SP.loaispid = LSP.id  inner join nhacungcap NCC on SP.nccid = NCC.id WHERE SP.loaispid = ? ";
		return jdbcTemplate.query(sql, new LoaisanphamMapper(), loaispid);
	}
	
	public Loaisanpham findById(int id) {
		String sql = "SELECT * FROM loaisanpham WHERE id=?";
		return jdbcTemplate.queryForObject(sql, new LoaisanphamMapper(), id);
	}
	
	
	public List<Loaisanpham> findAll(){
	String sql = "SELECT * FROM loaisanpham";
	return jdbcTemplate.query(sql, new LoaisanphamMapper());
	}

}
