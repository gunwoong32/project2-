package com.mega.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class TheaterController {

	@Autowired
	TheaterDAO dao;
	
	@Autowired
	MovieDAO dao2;
	
	@Autowired
	BookingDAO dao3;
	
	
	@RequestMapping("theaterOne.do")
	public void theaterOne(TheaterDTO theaterDTO, Model model) {
		System.out.println(theaterDTO);
		TheaterDTO dto = dao.readOne(theaterDTO);
		model.addAttribute("dto", dto);
		System.out.println(dto);
	}
	
	@RequestMapping("theaterTwo.do")
	public void theaterTwo(TheaterDTO theaterDTO, Model model) {
		System.out.println(theaterDTO);
		TheaterDTO dto = dao.readOne(theaterDTO);
		model.addAttribute("dto", dto);
		System.out.println(dto);
	}
	
	@RequestMapping("book.do")
	public void list(Model model) {
		List<TheaterDTO> list = dao.list();
		List<MovieDTO> list2 = dao2.list2();
		List<BookingDTO> list3 = dao3.list3();
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		System.out.println("전체 극장수" + list.size());
		System.out.println("전체 영화수" + list2.size());
		System.out.println("전체 예약수" + list3.size());
}
	@RequestMapping("theaterTab02.do")
	public void list5(Model model) {
		List<TheaterDTO> list = dao.list();
		List<MovieDTO> list2 = dao2.list2();
		List<BookingDTO> list3 = dao3.list3();
		model.addAttribute("list", list);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		System.out.println("전체 극장수" + list.size());
		System.out.println("전체 영화수" + list2.size());
		System.out.println("전체 예약수" + list3.size());
}	
}
