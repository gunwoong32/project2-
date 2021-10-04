package com.mega.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BookingController {

	@Autowired
	BookingDAO dao;
	
	@RequestMapping("BookingAll.do")
	public void list(Model model) {
		List<BookingDTO> list = dao.list3();
		model.addAttribute("list", list);
		System.out.println("전체 회원수 " + list.size());
	}
	@RequestMapping("bookInsert.do")
	public void insert(BookingDTO bookingDTO) {
		System.out.println(bookingDTO);
		dao.create(bookingDTO);
}
}