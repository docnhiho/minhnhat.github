package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.LoaisanphamDAO;
import mushtaq.entities.Loaisanpham;


@Service
@Transactional
public class LoaisanphamService {
	
	@Autowired
	private LoaisanphamDAO loaisanphamDAO;
	
	public List<Loaisanpham> findAll(){
		return loaisanphamDAO.findAll();
	}
	
	public Loaisanpham findById(int id) {
		return loaisanphamDAO.findById(id);
	}
	
	public void save(Loaisanpham loaisanpham) {
		// validate business
		loaisanphamDAO.save(loaisanpham);
	}
	
	public void update(Loaisanpham loaisanpham) {
		loaisanphamDAO.update(loaisanpham);
	}
	
	public void delete(int id) {
		loaisanphamDAO.delete(id);
	}

	public List<Loaisanpham> findAllById(int loaispid) {
		return loaisanphamDAO.findAllById(loaispid);
	}
	
}
