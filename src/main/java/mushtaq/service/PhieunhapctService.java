package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.PhieunhapctDAO;
import mushtaq.entities.Phieunhapct;

@Service
@Transactional
public class PhieunhapctService {

	@Autowired
	private PhieunhapctDAO phieunhapctDAO;
	
	public List<Phieunhapct> findAll() {
		return phieunhapctDAO.findAll();
	}

	public Phieunhapct findById(int id) {
		return phieunhapctDAO.findById(id);
	}
	
	public void save(Phieunhapct phieunhapct){
		phieunhapctDAO.save(phieunhapct);
	}

	public void update(Phieunhapct phieunhapct){
		phieunhapctDAO.update(phieunhapct);
	}
	
	public void updateSoluong(Phieunhapct phieunhapct){
		phieunhapctDAO.update(phieunhapct);
	}
	
	public void delete(int id){
		phieunhapctDAO.delete(id);
	}
}
