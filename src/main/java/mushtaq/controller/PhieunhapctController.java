package mushtaq.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.entities.Phieunhap;
import mushtaq.entities.Phieunhapct;
import mushtaq.service.PhieunhapService;
import mushtaq.service.PhieunhapctService;

@Controller
@RequestMapping(value = "")
public class PhieunhapctController {
	
	@Autowired
	private PhieunhapctService phieunhapctService;
	@Autowired
	private PhieunhapService phieunhapService;

	@RequestMapping(value={"/phieunhapct-list"},method = RequestMethod.GET)
	public String listPhieunhapct(Model model) {
		model.addAttribute("listPhieunhapct", phieunhapctService.findAll());
		return "phieunhapct/phieunhapct-list";
	}
//	@RequestMapping("/phieunhapct-save")
//	public String insertPhieunhapct(Model model) {
//		model.addAttribute("phieunhapct", new Phieunhapct());
//		return "phieunhapct-save";
//	}
	
	
	@RequestMapping("/phieunhapct-save/{id}")
	public String insertPhieunhapct(@PathVariable int id, Model model) {
		Phieunhap phieunhap = phieunhapService.findById(id);
		model.addAttribute("phieunhap", phieunhap);
		model.addAttribute("phieunhapct", new Phieunhapct());
		return "phieunhapct/phieunhapct-save";
	}
	
	
	@RequestMapping("/phieunhapct-update/{id}")
	public String updatePhieunhapct(@PathVariable int id, Model model) {
		Phieunhapct phieunhapct = phieunhapctService.findById(id);
		model.addAttribute("phieunhapct", phieunhapct);
		return "phieunhapct/phieunhapct-update";
	}

	@RequestMapping("/savePhieunhapct")
	public String doSavePhieunhapct(@ModelAttribute("Phieunhapct") Phieunhapct phieunhapct, Model model) {
		phieunhapctService.save(phieunhapct);
		model.addAttribute("listPhieunhapct", phieunhapctService.findAll());
		return "phieunhapct/phieunhapct-list";
	}

	@RequestMapping("/updatePhieunhapct")
	public String doUpdatePhieunhapct(@ModelAttribute("Phieunhapct") Phieunhapct phieunhapct, Model model) {
		phieunhapctService.update(phieunhapct);
		model.addAttribute("listPhieunhapct", phieunhapctService.findAll());
		return "phieunhapct/phieunhapct-list";
	}
	
	@RequestMapping("/phieunhapctDelete/{id}")
	public String doDeletePhieunhapct(@PathVariable int id, Model model) {
		phieunhapctService.delete(id);
		model.addAttribute("listPhieunhapct", phieunhapctService.findAll());
		return "phieunhapct/phieunhapct-list";
	}
}
