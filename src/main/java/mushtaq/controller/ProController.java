package mushtaq.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mushtaq.entities.Loaisanpham;
import mushtaq.entities.Sanpham;
import mushtaq.service.LoaisanphamService;
import mushtaq.service.SanphamService;

@Controller
public class ProController {
	
	@Autowired
	private SanphamService spService;	
	@Autowired
	private LoaisanphamService loaiService;
	
	@RequestMapping(value = "product")
	public String product(HttpServletRequest request, @RequestParam int id) {
		Sanpham product = spService.findById(id);
		if(product != null) {
			request.setAttribute("product", product);
		}
		return "user/product";
	}

	@RequestMapping(value = "productCate")
	public String productByCategory(Model model, HttpServletRequest request, @RequestParam int categories, 
			@RequestParam String search, HttpSession session) {
		
		int productLimit = (Integer) session.getAttribute("productLimit");
		
		List<Sanpham> list;
		Loaisanpham loai;
		if(categories == 0) {			
			list = spService.findBySearchAll(search, 0, productLimit);
			loai = new Loaisanpham();
			loai.setTenloaisp("Tất cả các sản phẩm");
		}else {
			list = spService.findBySearch(categories, search, 0, productLimit); 
			loai = loaiService.findById(categories);
		}
		
		model.addAttribute("loai", loai);
		session.setAttribute("productCate", list);
		return "user/category";
	}
	
}
