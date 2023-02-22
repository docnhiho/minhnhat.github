package mushtaq.controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mushtaq.service.DoanhthuService;

@Controller
@RequestMapping(value = "")
public class DoanhthuController {
	
	@Autowired
	private DoanhthuService doanhthuService;
	
	@RequestMapping(value = { "/doanhthu-list" }, method = RequestMethod.GET)
	public String listrpMonth(Model model) {
		model.addAttribute("listDoanhthudate", doanhthuService.findAllDate());
		model.addAttribute("listDoanhthumonth", doanhthuService.findAllMonth());
		model.addAttribute("listDoanhthuyear", doanhthuService.findAllYear());		
		return "doanhthu-list";
		
	}
	
//	@RequestMapping(value = { "/sreachdate/{date}" }, method = RequestMethod.GET)
//	public String sreachDate(Model model, @PathVariable Date date) {
////		doanhthuService.sreachDate(date);
//		model.addAttribute("listDoanhthusreach", doanhthuService.sreachDate(date));
//		model.addAttribute("listDoanhthumonth", doanhthuService.findAllMonth());
//		model.addAttribute("listDoanhthuyear", doanhthuService.findAllYear());		
//		return "doanhthu-list";
//		
//	}
	

}
