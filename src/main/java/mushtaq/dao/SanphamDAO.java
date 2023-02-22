package mushtaq.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.entities.Sanpham;
import mushtaq.entities.SanphamMapper;

@Repository
@Transactional
public class SanphamDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	// Lưu sản phẩm
	public void save(Sanpham sanpham) {
		String sql = "INSERT INTO sanpham (loaisanpham, tensanpham, nhacungcap, gia, mota, image, sanphamStatus) VALUES (?,?,?,?,?,?,1)";
		jdbcTemplate.update(sql, sanpham.getLoaisanpham(), sanpham.getTensanpham(), sanpham.getNhacungcap(), sanpham.getGia(),
				 sanpham.getMota(), sanpham.getImage());
	}

	// Xóa sản phẩm
	public void delete(int id) {
		String sql = "UPDATE sanpham set sanphamStatus = 0 WHERE id = " + id;
		jdbcTemplate.update(sql);
	}
	
	// Khôi phục sản phẩm đã xóa
	public void restore(int id) {
		String sql = "UPDATE sanpham set sanphamStatus = 1 WHERE id = " + id;
		jdbcTemplate.update(sql);
	}

	// Chỉnh sửa sản phẩm
	public void update(Sanpham sanpham) {
		String sql = "UPDATE sanpham set loaisanpham = ?, tensanpham = ?, nhacungcap = ?, gia = ?, mota = ?, image = ? WHERE id = ? ";
		jdbcTemplate.update(sql, sanpham.getLoaisanpham(), sanpham.getTensanpham(), sanpham.getNhacungcap(), sanpham.getGia(),
				 sanpham.getMota(), sanpham.getImage(), sanpham.getId());
	}

	
	public List<Sanpham> findAllById(int id) {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham\r\n"
				+ "  LSP on SP.loaisanpham = LSP.id  inner join nhacungcap NCC on SP.nhacungcap = NCC.id WHERE SP.id = ? ";
		return jdbcTemplate.query(sql, new SanphamMapper(), id);
	}

	// Tìm sản phẩm theo mã
	public Sanpham findById(int id) {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham\r\n"
				+ "  LSP on SP.loaisanpham = LSP.id  inner join nhacungcap NCC on SP.nhacungcap = NCC.id WHERE SP.id = ? ";
		return jdbcTemplate.queryForObject(sql, new SanphamMapper(), id);
	}

	// Lấy tất cả sản phẩm chưa bị xóa
	public List<Sanpham> findAll() {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join loaisanpham "
				+ "LSP on SP.loaisanpham = LSP.id inner join nhacungcap NCC on SP.nhacungcap = NCC.id WHERE sanphamStatus = 1";
		return jdbcTemplate.query(sql, new SanphamMapper());
	}

	// Lấy tất cả sản phẩm đã bị xóa
	public List<Sanpham> findSpBin() {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham\r\n" + 
				"				  LSP on SP.loaisanpham = LSP.id  inner join nhacungcap NCC on SP.nhacungcap = NCC.id where sanphamStatus = 0;";
		return jdbcTemplate.query(sql, new SanphamMapper());
	}

	// Lấy danh sách sản phẩm theo loại, tìm kiếm, có giới hạn sắp xếp giảm dần theo ngày tạo
	public List<Sanpham> findBySearch(int categoryId, String search, int start, int end) {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham "
				+ "LSP on SP.loaisanpham = LSP.id  inner join nhacungcap NCC on SP.nhacungcap = NCC.id "
				+ "WHERE SP.sanphamStatus = 1 and SP.loaisanpham=? and SP.tensanpham like '%" + search + "%' order by created desc limit ?, ?";
		return jdbcTemplate.query(sql, new SanphamMapper(), categoryId, start, end);
	}

	// Lấy danh sách sản phẩm theo tìm kiếm, có giới hạn sắp xếp giảm dần theo ngày tạo
	public List<Sanpham> findBySearchAll(String search, int start, int end) {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham "
				+ "LSP on SP.loaisanpham = LSP.id  inner join nhacungcap NCC on SP.nhacungcap = NCC.id "
				+ "WHERE SP.sanphamStatus = 1 and SP.tensanpham like '%" + search + "%' order by created desc limit ?, ?";
		return jdbcTemplate.query(sql, new SanphamMapper(), start, end);
	}
	
	// Lấy danh sách sản phẩm theo ngày tạo mới nhất, có giới hạn
	public List<Sanpham> findByDay(int limit) {
		String sql = "select SP.*, LSP.tenloaisp, NCC.tennhacungcap from  sanpham SP inner join  loaisanpham "
				+ "LSP on SP.loaisanpham = LSP.id  inner join nhacungcap NCC on SP.nhacungcap = NCC.id "
				+ "WHERE SP.sanphamStatus = 1 order by created desc limit 0, ?";
		return jdbcTemplate.query(sql, new SanphamMapper(), limit);
	}
	
	// Lấy danh sách sản phẩm bán chạy có giới hạn
	public List<Sanpham> findByBestSelling(int limit) {
		String sql = "select sp.*, loai.tenloaisp, NCC.tennhacungcap  from receiptitem ri "
				+ "inner join sanpham sp on sp.id = ri.sanphamid "
				+ "inner join nhacungcap NCC on NCC.id =  sp.nhacungcap "
				+ "inner join loaisanpham loai on loai.id = sp.loaisanpham "
				+ "group by sp.id order by sum(ri.receiptItemQuantity) desc limit 0, ?";
		return jdbcTemplate.query(sql, new SanphamMapper(), limit);
	}

	// Lấy danh sách sản phẩm theo hóa đơn
	public List<Sanpham> findReceiptid(int id) {
		String sql = "select  A.receiptid, B.id, A.sanphamid, C.id, C.loaisanpham, C.tensanpham, C.nhacungcap, C.gia, C.mota, C.image, C.sanphamStatus, A.receiptItemPrice, A.receiptItemQuantity, (A.receiptItemQuantity * A.receiptItemPrice) as receiptItemTongtien, B.receiptName, " + 
				"						B.receiptAddress, B.receiptDate, B.receiptPhone, B.receiptMail, E.tenloaisp, F.tennhacungcap from receiptitem A " + 
				"												inner join receipt B on B.id = A.receiptid " + 
				"												inner join sanpham C on C.id = A.sanphamid " + 
				"				                                inner join  loaisanpham E on C.loaisanpham = E.id " + 
				"												inner join nhacungcap F on C.nhacungcap = F.id " + 
				"				                                where B.id = ?" + 
				"				                                order by A.receiptid asc;";
		return jdbcTemplate.query(sql, new SanphamMapper(), id);
	}
}
