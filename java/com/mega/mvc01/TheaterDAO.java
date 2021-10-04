package com.mega.mvc01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TheaterDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	public TheaterDTO readOne(TheaterDTO theaterDTO) {
		System.out.println(theaterDTO);
		TheaterDTO dto = mybatis.selectOne("theater.one", theaterDTO);
		return dto;
	}
	
	public List<TheaterDTO> list() {
		List<TheaterDTO> list = mybatis.selectList("theater.all");//맵퍼에잇는거
		return list;
	}
}
