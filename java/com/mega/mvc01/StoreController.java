package com.mega.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class StoreController {
	
	
	@Autowired
	StoreDAO dao;
	
	@RequestMapping("insert.do")
	public void insert(StoreDTO storeDTO) {
		System.out.println(storeDTO);
		dao.create(storeDTO);
		
	}
	
}
