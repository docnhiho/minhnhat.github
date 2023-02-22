package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SanphamMapper implements RowMapper<Sanpham> {

	public Sanpham mapRow(ResultSet rs, int rowNum) throws SQLException {

		Sanpham sanpham = new Sanpham();
		sanpham.setId(rs.getInt("id"));
		sanpham.setLoaisanpham(rs.getInt("loaisanpham"));
		sanpham.setTensanpham(rs.getString("tensanpham"));
		sanpham.setNhacungcap(rs.getInt("nhacungcap"));
		sanpham.setGia(rs.getDouble("gia"));
		sanpham.setMota(rs.getString("mota"));
		sanpham.setImage(rs.getString("image"));
		sanpham.setSanphamStatus(rs.getInt("sanphamStatus"));
		//get name
		sanpham.setLoaisp(rs.getString("tenloaisp"));
		sanpham.setTenncc(rs.getString("tennhacungcap"));
		return sanpham;
	}

}
