package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.entities.Loaisanpham;
import mushtaq.service.LoaisanphamService;

@Controller
@RequestMapping(value = "")
public class LoaisanphamController {
	
	@Autowired
	private LoaisanphamService loaisanphamService;
	
	@RequestMapping( value = {"/loaisanpham-list"},method = RequestMethod.GET)
	public String listLoaisp(Model model) {
		model.addAttribute("listLoaisp", loaisanphamService.findAll());
		return "loaisp/loaisanpham-list";
	}

	@RequestMapping("/loaisanpham-save")
	public String insertLoaisp(Model model) {
		
		
		model.addAttribute("loaisp", new Loaisanpham());
		
		
		return "loaisp/loaisanpham-save";
	}


	@RequestMapping("/loaisanpham-update/{id}")
	public String updateLoaisp(@PathVariable int id, Model model) {
		Loaisanpham loaisanpham = loaisanphamService.findById(id);
		model.addAttribute("loaisp", loaisanpham);
		return "loaisp/loaisanpham-update";
	}

	@RequestMapping("/saveLoaisp")
	public String doSaveLoaisp(@ModelAttribute("Loaisp") Loaisanpham loaisanpham, Model model) {
		loaisanphamService.save(loaisanpham);
		model.addAttribute("listLoaisp", loaisanphamService.findAll());
		return "loaisp/loaisanpham-list";
	}

	@RequestMapping("/updateLoaisp")
	public String doUpdateLoaisp(@ModelAttribute("Loaisp") Loaisanpham loaisanpham, Model model) {
		loaisanphamService.update(loaisanpham);
		model.addAttribute("listLoaisp", loaisanphamService.findAll());
		return "loaisp/loaisanpham-list";
	}

	@RequestMapping("/loaispDelete/{id}")
	public String doDeleteLoaisp(@PathVariable int id, Model model) {
		loaisanphamService.delete(id);
		model.addAttribute("listLoaisp", loaisanphamService.findAll());
		return "loaisp/loaisanpham-list";
	}

}
