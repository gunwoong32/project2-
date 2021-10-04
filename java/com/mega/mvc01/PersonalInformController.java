package com.mega.mvc01;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonalInformController {
	
	@Autowired
	PersonalInformDAO dao;
		
	@RequestMapping("join.gigabox")
	public void insert(PersonalInformDTO informDTO) {
		System.out.println("1. join.gigabox >>" + informDTO);
		int result = dao.create(informDTO);
	}

	@RequestMapping("checkid.gigabox")
	public void check(PersonalInformDTO informDTO, Model model) {
		System.out.println("1.컨트롤러checkid.gigabox >>" + informDTO);
		PersonalInformDTO dto = dao.checkid(informDTO);
		System.out.println("3.컨트롤러에서 받은값 >>" + informDTO);
		String idresult = "사용가능한 ID입니다.";
		if(dto != null) {
			idresult = "중복된 ID가 있습니다. 다른 ID를 입력해주세요.";
		}
		System.out.println("4.컨트롤러에서 넘겨줄값 >>" + idresult);
		model.addAttribute("idresult", idresult);
	}
	
	@RequestMapping("login.gigabox")
	   public String login(PersonalInformDTO informDTO, HttpSession session) {
	      System.out.println("1.컨트롤러로 전달 : " + informDTO);
	      boolean result = dao.login(informDTO);
	      if (result == true) {
	         session.setAttribute("piid", informDTO.getPiid());//세션출력 : ${piid}
	         String mid = informDTO.getPiid();
	    	 System.out.println("정보넘기자>> " + mid);
	         
	         return "redirect:index2.jsp";
	      }
	      return "redirect:login.jsp";
	}
	
	
	@RequestMapping("findid.gigabox")
	public void findid(PersonalInformDTO informDTO, Model model) {
		System.out.println("1.컨트롤러findid.gigabox >>" + informDTO);
		PersonalInformDTO dto = dao.findid(informDTO);
		System.out.println("3.컨트롤러에서 받은값 >>" + dto);
		String findresult = "존재하지 않는 ID입니다. 회원가입을 진행해주세요!";
		if(dto != null) {
			findresult = "가입하신 ID는 " + dto.getPiid() +" 입니다."; 
		}
		System.out.println("4.컨트롤러에서 넘겨줄값 >>" + findresult);
	
		model.addAttribute("findresult", findresult);
	}
	
	@RequestMapping("readinform.gigabox")
	public void readinform(PersonalInformDTO informDTO, Model model) {
		System.out.println("1.컨트롤러readinform.gigabox >>" + informDTO);
		PersonalInformDTO dto = dao.readinform(informDTO);
		System.out.println("3.컨트롤러에서 받은값 >>" + dto);
		model.addAttribute("name", dto.getName());
		model.addAttribute("birth", dto.getBirth());
		model.addAttribute("tel", dto.getTel());
		model.addAttribute("email", dto.getEmail());
	}
	
	@RequestMapping("edittel.gigabox")
	public void edittel(PersonalInformDTO informDTO, Model model) {
		System.out.println("1.컨트롤러 edittel >>" + informDTO);
		int edittelresult = dao.edittel(informDTO);
		System.out.println("3.컨트롤러에서 받은값 >>" + edittelresult);
		String edittelresult2 = "전화번호가 변경되지 않았습니다. 다시 시도해주세요.";
		if( edittelresult == 1) {
			edittelresult2 = "전화번호가 변경되었습니다.";
		}
		System.out.println("4.컨트롤러에서 넘겨줄값 >>" + edittelresult2);
		
		model.addAttribute("edittelresult2", edittelresult2);
	}
	
	@RequestMapping("editemail.gigabox")
	public void editemail(PersonalInformDTO informDTO, Model model) {
		System.out.println("1.컨트롤러 editemail >>" + informDTO);
		int editemailresult = dao.editemail(informDTO);
		System.out.println("3.컨트롤러에서 받은값 >>" + editemailresult);
		String editemailresult2 = "E-Mail이 변경되지 않았습니다. 다시 시도해주세요.";
		if( editemailresult == 1) {
			editemailresult2 = "E-Mail이 변경되었습니다.";
		}
		System.out.println("4.컨트롤러에서 넘겨줄값 >>" + editemailresult2);
		
		model.addAttribute("editemailresult2", editemailresult2);
	}
	
	@RequestMapping("editpw.gigabox")
	public void editpw(PersonalInformDTO informDTO, Model model) {
		System.out.println("1.컨트롤러 editepw >>" + informDTO);
		int editpwresult = dao.editpw(informDTO);
		System.out.println("3.컨트롤러에서 받은값 >>" + editpwresult);
		String editpwresult2 = "비밀번호가 변경지않았습니다. 다시 시도해주세요.";
		if( editpwresult == 1) {
			editpwresult2 = "비밀번호가 변경되었습니다.";
		}
		System.out.println("4.컨트롤러에서 넘겨줄값 >>" + editpwresult2);
		
		model.addAttribute("editpwresult2", editpwresult2);
	}
	
	@RequestMapping("withdraw.gigabox")
	   public void withdraw(PersonalInformDTO informDTO, HttpSession session,Model model) {
	      System.out.println("1.컨트롤러 withdraw >>" + informDTO);
	      int withdrawresult = dao.withdraw(informDTO);
	      System.out.println("3.컨트롤러에서 받은값 >>" + withdrawresult);
	      String withdrawresult2 = "탈퇴에 실패했습니다. 다시 시도해주세요.";
	      if( withdrawresult == 1) {
	         session.invalidate();
	         withdrawresult2 = "탈퇴가 완료되었습니다. GIGABOX를 이용해주셔서 감사합니다.";
	      }
	      System.out.println("4.컨트롤러에서 넘겨줄값 >>" + withdrawresult2);
	      
	      model.addAttribute("withdrawresult2", withdrawresult2);
	   }
	
	@RequestMapping("logout.gigabox")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index2.jsp";
		
	}
	
	

}