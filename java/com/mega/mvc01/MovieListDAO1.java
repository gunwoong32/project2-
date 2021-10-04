package com.mega.mvc01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieListDAO1 {

	@Autowired
	SqlSessionTemplate my;
	
	public List<MovieListDTO1> showAllMovieList() {// 영화 목록 갖고와
		//MovieReviewDTO dto2 = my.selectOne("cBbs.review", MOVIENUM);
		List<MovieListDTO1> dto=my.selectList("cBbs.showAllMovieList1");
		return dto;
	}
	
	public MovieListDTO1 one(MovieListDTO1 movieList) {
		System.out.println(movieList);
		return my.selectOne("cBbs.one", movieList);
	
	}

}
