package com.mega.mvc01;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Repository
public class ProductListDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<ProductListDTO> all() {
		return my.selectList("product.all");
	}

}
