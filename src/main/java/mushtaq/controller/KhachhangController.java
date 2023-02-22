package mushtaq.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.service.KhachhangService;
import mushtaq.entities.Khachhang;

@Controller
public class KhachhangController {

	@Autowired
	private KhachhangService khachhangService;
	

	@RequestMapping(value = { "/khachhang-list" }, method = RequestMethod.GET)
	public String listKhachhang(Model model) {
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang/khachhang-list";
	}

	@RequestMapping("/khachhang-save")
	public String insertKhachhang(Model model) {
		model.addAttribute("khachhang", new Khachhang());
		return "khachhang/khachhang-save";
	}


	@RequestMapping("/khachhang-update/{id}")
	public String updateKhachhang(@PathVariable int id, Model model) {
		Khachhang khachhang = khachhangService.findById(id);
		model.addAttribute("khachhang", khachhang);
		return "khachhang/khachhang-update";
	}

	@RequestMapping("/saveKhachhang")
	public String doSaveKhachhang(@ModelAttribute("Khachhang") Khachhang khachhang, Model model) {
		khachhangService.save(khachhang);
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang/khachhang-list";
	}

	@RequestMapping("/updateKhachhang")
	public String doUpdateKhachhang(@ModelAttribute("Khachhang") Khachhang khachhang, Model model) {
		khachhangService.update(khachhang);
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang/khachhang-list";
	}

	@RequestMapping(value = "/deleteKhachhang/{id}", method = RequestMethod.GET)
	public String doDeleteKhachhang(@PathVariable int id, Model model) {
		khachhangService.delete(id);
		model.addAttribute("listKhachhang", khachhangService.findAll());
		return "khachhang/khachhang-list";
	}
}
