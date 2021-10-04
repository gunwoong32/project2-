package com.mega.mvc01;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mega.mvc01.PersonalInformDTO;


@Repository
public class PersonalInformDAO {
	
	@Autowired
	SqlSessionTemplate personalinform;
	
	
	public int create(PersonalInformDTO informDTO) {
		System.out.println("2." + informDTO);
		int result = personalinform.insert("inform.add", informDTO);
		return result;
	}
	
	public PersonalInformDTO checkid(PersonalInformDTO informDTO) {
		System.out.println("2.DAO checkid>>" + informDTO);
		PersonalInformDTO dto = personalinform.selectOne("inform.checkId", informDTO);
		return dto;
	}
	
	public boolean login(PersonalInformDTO dto) {
		String dbId = personalinform.selectOne("inform.dbid", dto);
		String dbPw = personalinform.selectOne("inform.dbpw", dto);
		System.out.println("2.DAO에 값전달됨" + dbId + " , " + dbPw);
		boolean result = false; 
		if (dto.getPiid().equals(dbId) && dto.getPw().equals(dbPw)) {
			result = true;
		}
		return result;
	}
	
	public PersonalInformDTO findid(PersonalInformDTO informDTO) {
		System.out.println("2.DAO findId>>" + informDTO);
		PersonalInformDTO dto = personalinform.selectOne("inform.findId", informDTO);
		return dto;
	}
	
	public PersonalInformDTO readinform(PersonalInformDTO informDTO) {
		System.out.println("2.DAO readInform>>" + informDTO);
		PersonalInformDTO dto = personalinform.selectOne("inform.readInform", informDTO);
		return dto;
	}

	public int edittel(PersonalInformDTO informDTO) {
		System.out.println("2.DAO edittel>>" + informDTO);
		int edittelresult = personalinform.update("inform.edittel", informDTO);
		System.out.println("3.DAO result>>" + edittelresult);
		return edittelresult;
	}
	
	public int editemail(PersonalInformDTO informDTO) {
		System.out.println("2.DAO editemail>>" + informDTO);
		int editemailresult = personalinform.update("inform.editemail", informDTO);
		System.out.println("3.DAO result>>" + editemailresult);
		return editemailresult;
	}
	
	public int editpw(PersonalInformDTO informDTO) {
		System.out.println("2.DAO editpw>>" + informDTO);
		int editpwresult = personalinform.update("inform.editpw", informDTO);
		System.out.println("3.DAO result>>" + editpwresult);
		return editpwresult;
	}
	
	public int withdraw(PersonalInformDTO informDTO) {
		System.out.println("2.DAO withdraw>>" + informDTO);
		int withdrawresult = personalinform.delete("inform.withdraw", informDTO);
		System.out.println("3.DAO result>>" + withdrawresult);
		return withdrawresult;
	}
}

