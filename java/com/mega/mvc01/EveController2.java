package com.mega.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class EveController2 {
	
	@Autowired
	EveDAO dao;
	
	@RequestMapping("list2.mega")
	public void list2(Model model) {
		List<EveDTO> list = dao.list2();
		model.addAttribute("list2", list);
		System.out.println("회원 전체 수>> " + list.size());
		//JOptionPane.showMessageDialog(null, "회원 전체 수>> " + list.size());
	}
	
	/*
	 * @RequestMapping("list3.mega") public void list3(Model model) { List<EveDTO>
	 * list = dao.list3(); model.addAttribute("list3", list);
	 * System.out.println("회원 전체 수>> " + list.size());
	 * //JOptionPane.showMessageDialog(null, "회원 전체 수>> " + list.size()); }
	 */
	
	
	@RequestMapping("one2.do") //게시판 상세페이지+댓글 리스트 
	public void one2(EveDTO eveDTO, Model model) {
		EveDTO dto = dao.one(eveDTO);
		dto.setEveid(eveDTO.getEveid());
		System.out.println("-------------------" + dto);
		model.addAttribute("dto", dto);//게시판 상세페이지 
	}
	

}
