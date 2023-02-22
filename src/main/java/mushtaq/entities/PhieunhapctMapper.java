package mushtaq.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class PhieunhapctMapper implements RowMapper<Phieunhapct> {

	public Phieunhapct mapRow(ResultSet rs, int rowNum) throws SQLException {
		Phieunhapct phieunhapct = new Phieunhapct();
		phieunhapct.setId(rs.getInt("id"));
		phieunhapct.setMaphieunhap(rs.getInt("maphieunhap"));
		phieunhapct.setTensanpham(rs.getString("tensanpham"));
		phieunhapct.setLoaisanpham(rs.getString("loaisanpham"));
		phieunhapct.setSoluong(rs.getInt("soluong"));
		phieunhapct.setGia(rs.getDouble("gia"));
		phieunhapct.setTongtien(rs.getDouble("tongtien"));
		
		
		return phieunhapct;
	}

}
