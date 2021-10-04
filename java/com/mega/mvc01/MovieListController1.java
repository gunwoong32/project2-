package com.mega.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieListController1 {
	
	 @Autowired
	   MovieListDAO1 dao;

	   @RequestMapping("mlist.mega") // 영화목록 쫘아악
	   public void movieList(Model model) {
	      List<MovieListDTO1> dto = dao.showAllMovieList();
	      model.addAttribute("movieList", dto);
	   }
	   
	   @RequestMapping("mainlist.mega")
		public void list2(Model model) {
			List<MovieListDTO1> list = dao.showAllMovieList();
			model.addAttribute("list2", list);
			System.out.println("영화 전체 수>> " + list.size());
		}
	   
	   @RequestMapping("one3.do") //게시판 상세페이지+댓글 리스트 
		public void one2(MovieListDTO1 movieList, Model model) {
		   MovieListDTO1 dto = dao.one(movieList);
			dto.setMovienum(movieList.getMovienum());
			System.out.println("-------------------" + dto);
			model.addAttribute("dto", dto);//게시판 상세페이지 
		}


}
