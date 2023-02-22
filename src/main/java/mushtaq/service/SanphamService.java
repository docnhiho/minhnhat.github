package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.SanphamDAO;
import mushtaq.entities.Sanpham;

@Service
@Transactional
public class SanphamService {

	@Autowired
	private SanphamDAO sanphamDAO;

	public List<Sanpham> findAll() {
		return sanphamDAO.findAll();
	}

    public List<Sanpham> findSpBin() {
    	return sanphamDAO.findSpBin();
    }

	public Sanpham findById(int id) {
		return sanphamDAO.findById(id);
	}

	public List<Sanpham> findAllById(int id) {
		return sanphamDAO.findAllById(id);
	}

	public List<Sanpham> findReceiptid(int id) {
		return sanphamDAO.findReceiptid(id);
	}

	public List<Sanpham> findBySearch(int categoryId, String search, int start, int end) {
		return sanphamDAO.findBySearch(categoryId, search, start, end);
	}

	public List<Sanpham> findBySearchAll(String search, int start, int end) {
		return sanphamDAO.findBySearchAll(search, start, end);
	}
	
	// Lấy danh sách sản phẩm theo ngày tạo mới nhất, có giới hạn
	public List<Sanpham> findByDay(int limit) {
		return sanphamDAO.findByDay(limit);
	}

	// Lấy danh sách sản bán chạy có giới hạn
	public List<Sanpham> findByBestSelling(int limit) {
		return sanphamDAO.findByBestSelling(limit);
	}

	public void save(Sanpham sanpham) {
		// validate business
		sanphamDAO.save(sanpham);
	}

	public void update(Sanpham sanpham) {
		// validate business
		sanphamDAO.update(sanpham);
	}

	public void delete(int id) {
		// validate business
		sanphamDAO.delete(id);
	}
	
	public void restore(int id) {
		sanphamDAO.restore(id);
	}

}
