package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class PhieunhapMapper implements RowMapper<Phieunhap> {

	public Phieunhap mapRow(ResultSet rs, int rowNum) throws SQLException {
		Phieunhap phieunhap = new Phieunhap();
		phieunhap.setId(rs.getInt("id"));
		phieunhap.setManhacungcap(rs.getInt("manhacungcap"));
		phieunhap.setLoaisanpham(rs.getString("loaisanpham"));
		phieunhap.setTensanpham(rs.getString("tensanpham"));
		//get name
		phieunhap.setTenncc(rs.getString("tennhacungcap"));
				
		
		return phieunhap;
	}
}
