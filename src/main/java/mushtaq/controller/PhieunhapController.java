package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.entities.Phieunhap;
import mushtaq.service.NhacungcapService;
import mushtaq.service.PhieunhapService;

@Controller
@RequestMapping(value = "")
public class PhieunhapController {
	
	@Autowired
	private PhieunhapService phieunhapService;
	@Autowired
	private NhacungcapService nhacungcapService;

	@RequestMapping(value = {"/phieunhap-list"},method = RequestMethod.GET)
	public String listPhieunhap(Model model) {
		model.addAttribute("listPhieunhap", phieunhapService.findAll());
		return "phieunhap/phieunhap-list";
	}

	@RequestMapping(value ="/phieunhap-save")
	public String insertPhieunhap(Model model) {
		model.addAttribute("phieunhap", new Phieunhap());
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "phieunhap/phieunhap-save";
	}
	@RequestMapping("/phieunhap-update/{id}")
	public String updatePhieunhap(@PathVariable int id, Model model) {
		Phieunhap phieunhap = phieunhapService.findById(id);
		model.addAttribute("phieunhap", phieunhap);
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "phieunhap/phieunhap-update";
	}

	@RequestMapping(value ="/savePhieunhap", method = RequestMethod.POST)
	public String doSavePhieunhap(@ModelAttribute("Phieunhap") Phieunhap phieunhap, Model model) {
		phieunhapService.save(phieunhap);
		model.addAttribute("listPhieunhap", phieunhapService.findAll());
		return "phieunhap/phieunhap-list";
	}
	
	@RequestMapping("/updatePhieunhap")
	public String doUpdatePhieunhap(@ModelAttribute("Phieunhap") Phieunhap phieunhap, Model model) {
		phieunhapService.update(phieunhap);
		model.addAttribute("listPhieunhap", phieunhapService.findAll());
		return "phieunhap/phieunhap-list";
	}
	
	@RequestMapping("/phieunhapDelete/{id}")
	public String doDeletePhieunhap(@PathVariable int id, Model model) {
		phieunhapService.delete(id);
		model.addAttribute("listPhieunhap", phieunhapService.findAll());
		return "phieunhap/phieunhap-list";
	
	}
	
}
