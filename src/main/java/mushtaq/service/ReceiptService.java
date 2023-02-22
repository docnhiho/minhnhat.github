package mushtaq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mushtaq.dao.EmployeeDAO;
import mushtaq.dao.ReceiptDAO;
import mushtaq.entities.Employee;
import mushtaq.entities.Receipt;

@Service
@Transactional
public class ReceiptService {

	@Autowired
	private ReceiptDAO receiptDAO;

	@Autowired
	private EmployeeDAO employeeDAO;

	public List<Receipt> findAll() {
		return receiptDAO.findAll();
	}

//	public List<Products> findAllloaisp() {
//		return productsDAO.findAllloaisp();
//	}

	public List<Employee> listEmployee() {
		return employeeDAO.findAll();
	}

	public Receipt findById(int id) {
		return receiptDAO.findById(id);
	}

	public void save(Receipt receipt) {
		// validate business
		receiptDAO.save(receipt);
	}
	
	public void saveol(Receipt receipt) {
		// validate business
		receiptDAO.saveol(receipt);
	}

	public void update(Receipt receipt) {
		// validate business
		receiptDAO.update(receipt);
	}

	public void delete(int id) {
		// validate business
		receiptDAO.delete(id);
	}

	public List<Receipt> findAllBin() {
		return receiptDAO.findAllBin();
	}
	
	public Receipt findLastReceipt(int id) {
		return receiptDAO.findLastReceipt(id);
	}

	public void restore(int id) {
		receiptDAO.restore(id);
	}
	
	public int getIdLastReceipt() {
		return receiptDAO.getId();
	}

	public List<Receipt> findAllreceipt(int id) {
		return receiptDAO.findAllreceipt(id);
	}

}