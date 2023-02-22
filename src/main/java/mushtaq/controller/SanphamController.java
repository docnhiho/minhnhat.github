package mushtaq.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mushtaq.entities.Phieunhapct;
import mushtaq.entities.Sanpham;
import mushtaq.service.LoaisanphamService;
import mushtaq.service.NhacungcapService;
import mushtaq.service.PhieunhapctService;
import mushtaq.service.SanphamService;

@Controller
@RequestMapping(value = "")
public class SanphamController {
	
	@Autowired
	private ServletContext context;

	@Autowired
	private SanphamService sanphamService;
	
	@Autowired
	private LoaisanphamService loaisanphamService;
	
	@Autowired
	private NhacungcapService nhacungcapService;

	@RequestMapping(value = { "/sanpham-list" }, method = RequestMethod.GET)
	public String listSanpham(Model model) {
		model.addAttribute("listSanpham", sanphamService.findAll());
		return "sanpham/sanpham-list";
	}
	
	@RequestMapping(value = { "/shop" }, method = RequestMethod.GET) 
	public String Shop(Model model) {
		model.addAttribute("listSanpham", sanphamService.findAll());
		return "shop";
	}
	
	
	@RequestMapping(value = { "/sanpham-bin" }, method = RequestMethod.GET) 
	public String spbin(Model model) {
		model.addAttribute("listSanpham", sanphamService.findSpBin());
		return "sanpham/sanpham-bin";
	}
	
	@RequestMapping("/sanphamRestore/{id}")
	public String doRestoreSP(@PathVariable int id, Model model) {
		sanphamService.restore(id);
		model.addAttribute("listSanpham", sanphamService.findAll());
		return "sanpham/sanpham-list";
	}

	@RequestMapping(value = { "/sanpham-user" }, method = RequestMethod.GET)
	public String Sanpham(Model model) {
		model.addAttribute("listSanpham", sanphamService.findAll());
		return "sanpham/sanpham-user";
	}

	@RequestMapping(value = "/sanpham-save")
	public String insertSanpham(Model model) {
		model.addAttribute("sanpham", new Sanpham());
		model.addAttribute("listLoaisp", loaisanphamService.findAll());
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "sanpham/sanpham-save";
	}

	@RequestMapping("/sanpham-update/{id}")
	public String updateSanpham(@PathVariable int id, Model model) {
		Sanpham sanpham = sanphamService.findById(id);
		
		model.addAttribute("sanpham", sanpham);
		model.addAttribute("listLoaisp", loaisanphamService.findAll());
		model.addAttribute("listNhacungcap", nhacungcapService.findAll());
		return "sanpham/sanpham-update";
	}

	@RequestMapping(value = "/saveSanpham", method = RequestMethod.POST)
	public String doSaveSanpham(ModelMap model, HttpServletRequest request, @ModelAttribute("Sanpham") Sanpham sanpham,
			@RequestParam("uploadImg") MultipartFile image) {

		if (image.isEmpty()) {
			sanphamService.save(sanpham);

		} else {
			try {
				String path = context.getRealPath("/resources/image/" + image.getOriginalFilename());

				image.transferTo(new File(path));
				sanpham.setImage(image.getOriginalFilename());
				sanphamService.save(sanpham);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}

		model.addAttribute("listSanpham", sanphamService.findAll());
		return "redirect:/sanpham-save";
	}

	@RequestMapping("/updateSanpham")
	public String doUpdateSanpham(@ModelAttribute("Sanpham") Sanpham sanpham, Model model,
			@RequestParam("uploadImg") MultipartFile image) {

		if (image.isEmpty()) {
			sanphamService.update(sanpham);

		} else {
			try {
				String path = context.getRealPath("/resources/image/" + image.getOriginalFilename());

				image.transferTo(new File(path));
				sanpham.setImage(image.getOriginalFilename());
				sanphamService.update(sanpham);
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}

		model.addAttribute("listSanpham", sanphamService.findAll());
		return "sanpham/sanpham-list";
	}

	@RequestMapping("/sanphamDelete/{id}")
	public String doDeleteSanpham(@PathVariable int id, Model model) {
		sanphamService.delete(id);
		model.addAttribute("listSanpham", sanphamService.findAll());
		return "sanpham/sanpham-list";
	}

	@RequestMapping("/findById/{id}")
	public String doFindById(@PathVariable int id, Model model) {
		sanphamService.findById(id);
		model.addAttribute("findById", sanphamService.findById(id));
		return "sanpham/sanpham-list";
	}
	
	

}
