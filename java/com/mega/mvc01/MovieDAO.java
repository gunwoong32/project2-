package com.mega.mvc01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	
	public List<MovieDTO> list2() {
		List<MovieDTO> list2 = mybatis.selectList("movie.all");//맵퍼에잇는거
		return list2;
	}
}
