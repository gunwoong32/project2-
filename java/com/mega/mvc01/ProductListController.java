package com.mega.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProductListController {
	
	@Autowired
	ProductListDAO dao;
	
	@RequestMapping("list.do")
	public void list(Model model) {
		List<ProductListDTO> list = dao.all();
		model.addAttribute("list", list);
	}
}
