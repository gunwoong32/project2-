package com.mega.mvc01;

import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieListController {

	@Autowired
	MovieListDAO dao;

	// 영화 목록 페이지 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	@RequestMapping("movieList.do") // 영화목록
	public void movieList(Model model) {
		List<MovieListDTO> dto = dao.showAllMovieList();
		model.addAttribute("movieList", dto);
	}

	// 영화 상세 페이지 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	@RequestMapping("movieDetail.do") // 영화 상세 페이지 보여종
	public void movieDetail(String MOVIENUM, String MOVIETITLE, Model model) throws ParseException {
		MovieListDTO dto = dao.showMovieDetail(MOVIENUM);
		model.addAttribute("dto", dto);

		List<MovieReviewDTO> dto2 = dao.showMovieReview(MOVIENUM); // 리뷰도
		if (dto2.isEmpty()) {
			// System.out.println("비어있다");
			model.addAttribute("dto2", null);
		} else {
			model.addAttribute("dto2", dto2);
		}

		String dto3 = dao.showMovieGrade(MOVIENUM); // 평점 구하기
		model.addAttribute("dto3", dto3);

		// 누적 관객 수 !! 건웅님 booking 테이블 movie num 카운트해서 가져오기
		String dto4 = dao.showMovieCount(MOVIENUM);
		model.addAttribute("count", dto4);

		String search = ApiExamSearchBlog.search(MOVIETITLE);
		System.out.println(search);
		JSONParser jsonParser = new JSONParser(); // 문자열을 Json 형식에 맞게 Object로 파싱할 수 있는 Parser를 생성한다.
		Object obj = jsonParser.parse(search); // jsonParser를 통해 Json 문자열을 Object 형식으로 파싱한다
		JSONObject jsonObj = (JSONObject) obj; // Object 형식의 데이터를 JSONObject 형식으로 형변환한다.
		// System.out.println(jsonObj.get("items")); // {"writer":"ek","age":50}
		Object items = jsonObj.get("items");
		model.addAttribute("items", items);

	}

	// 리뷰게시판★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	@RequestMapping("createReview.do") // 리뷰쓸건데, 영화제목과 번호 read
	public void createReview(Model model) {
		List<MovieListDTO> dto = dao.showAllMovieList();
		model.addAttribute("movieList", dto);
	}

	@RequestMapping("create.review") // 리뷰 남기기
	public String createReview(MovieReviewDTO dtoReviewDTO, Model model) {
		int result = dao.createReview(dtoReviewDTO);
		// List<MovieReviewDTO> dto2=dao.showMovieReview(MOVIENUM);
		// MovieReviewDTO dto3=dao.showMovieReview(MOVIENUM);
		if (result == 1) {
			return "redirect:cBbs.show";
		} else {
			return "redirect:cBbs.show";
		}
	}

	@RequestMapping("reviewDetail") // 리뷰 상세 내용 보여줭
	public void showReviewDetail(int REVIEWNUM, Model model) {
		dao.reviewNumPlus(REVIEWNUM);// 리뷰 조회수 카운트 업!
		System.out.println("리뷰 카운트업 완료!");

		MovieReviewDTO dto = dao.showReviewDetail(REVIEWNUM);// 리뷰 상세내용 보여줭
		model.addAttribute("reviewDetail", dto);
	}

	@RequestMapping("delete.review") // 리뷰 제거
	public String deleteReview(int REVIEWNUM) {
		int result = dao.deleteReview(REVIEWNUM);
		if (result == 1) {
			return "redirect:cBbs.show";
		} else {
			return "redirect:cBbs.show";
		}
	}

	@RequestMapping("update.review") // 리뷰 수정
	public String updateReview(MovieReviewDTO dtoReviewDTO) {
		int result = dao.updateReview(dtoReviewDTO);
		if (result == 1) {
			return "redirect:cBbs.show";
		} else {
			return "redirect:cBbs.show";
		}
	}

	// 문의게시판★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	@RequestMapping("createAsk.do") // 문의 쓸건데, 극장이름 read
	public void createASk(Model model) {
		List<TheaterDTO> dto = dao.showTheaterinfo();
		model.addAttribute("theaterInfo", dto);
	}

	@RequestMapping("create.ask") // 문의 글 남기기
	public String createAsk(CreateAskDTO dtoCreateAskDTO, Model model) {
		int result = dao.createAsk(dtoCreateAskDTO);
		// List<MovieReviewDTO> dto2=dao.showMovieReview(MOVIENUM);
		// MovieReviewDTO dto3=dao.showMovieReview(MOVIENUM);
		if (result == 1) {
			return "redirect:cBbs.show";
		} else {
			return "redirect:cBbs.show";
		}
	}

	@RequestMapping("askdetail.do") // 문의 상세 내용 보여줭
	public void showAskDetail(int ASKNUM, Model model) {
		dao.askNumPlus(ASKNUM);// 문의 조회수 카운트 업!
		System.out.println("리뷰 카운트업 완료!");

		CreateAskDTO dto = dao.showAskDetail(ASKNUM);// 문의 상세내용 보여줭
		model.addAttribute("askDetail", dto);
	}

	@RequestMapping("delete.ask") // 문의 제거
	public String deleteAsk(int ASKNUM) {
		int result = dao.deleteAsk(ASKNUM);
		if (result == 1) {
			return "redirect:cBbs.show";
		} else {
			return "redirect:cBbs.show";
		}
	}

	@RequestMapping("update.ask") // 문의 수정
	public String updateAsk(CreateAskDTO dtoAskDTO) {
		int result = dao.updateAsk(dtoAskDTO);
		if (result == 1) {
			return "redirect:cBbs.show";
		} else {
			return "redirect:cBbs.show";
		}
	}

	// 고객센터 페이지★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
	@RequestMapping("cBbs.show") // 고 객 센 터 보여줘
	public void showAsk(Model model) { // 문의게시판
		List<CreateAskDTO> dto = dao.showAsk();// 문의 게시판 read
		model.addAttribute("ask", dto);

		List<TheaterDTO> dto3 = dao.showTheaterinfo(); // 극장별로 정렬할꺼라서 피료함
		model.addAttribute("theaterInfo", dto3);

		List<MovieReviewDTO> dto2 = dao.showAllReview();// 리뷰 게시판 10개가져와
		model.addAttribute("allReview", dto2);

		List<MovieReviewDTO> dto4 = dao.showAllReviewPage();// 리뷰 게시판 전체 가져와(페이지 버튼 생성용)
		model.addAttribute("allReviewPage", dto4);

	}

	@RequestMapping("ReviewBoardNextPage.do") // 리뷰 원하는 페이지. 리뷰넘버 역순.
	public void showBoardPage(String startNum, Model model) {
		// System.out.println("도착한 스타트넘버:"+startNum);
		List<MovieReviewDTO> dto2 = dao.ReviewBoardNextPage(startNum);// 리뷰 게시판 10개가져와 원하는 인덱스 만큼 갖고와
		model.addAttribute("allReview111", dto2);

	}

	@RequestMapping("askOnlyTitle.do") // 특정극장 문의만 가져와
	public void showAskOnlyTitle(String THEATERNAME, Model model) {
		List<CreateAskDTO> dto = dao.showAskOnlyTitle(THEATERNAME);// 특정극장 문의만 가져와
		model.addAttribute("askTitle", dto);
	}

	@RequestMapping("askAllList.do") // 다시 전체 문의 보여줘
	public void showAskAllTitle(Model model) {
		List<CreateAskDTO> dto = dao.showAsk();// 문의 게시판 갖고올꺼
		model.addAttribute("ask", dto);
	}

	@RequestMapping("reviewDesc.do") // 조회수 높은순으로 리뷰 보여주세요!!!!
	public void reviewDesc(Model model) {
		List<MovieReviewDTO> dto = dao.reviewDesc();// 문의 게시판 조회수 역순으로 갖고올꺼
		model.addAttribute("reviewDesc", dto);

		List<MovieReviewDTO> dto4 = dao.showAllReviewPage();// 리뷰 게시판 전체 가져와(페이지 버튼 생성용)
		model.addAttribute("allReviewPage", dto4);
	}

	@RequestMapping("reviewAll.do") // 리뷰게시판 다시 전체 다 보여주세요(리뷰번호 역순)
	public void reviewAll(Model model) {
		List<MovieReviewDTO> dto = dao.showAllReview();// 문의 게시판 갖고올꺼
		model.addAttribute("reviewAll", dto);

		List<MovieReviewDTO> dto4 = dao.showAllReviewPage();// 리뷰 게시판 전체 가져와(페이지 버튼 생성용)
		model.addAttribute("allReviewPage", dto4);
	}

	/*
	 * @RequestMapping("reviewOrderByTitle.do") // order by 제목 public void
	 * reviewOrderByTitle(Model model) { List<MovieReviewDTO> dto =
	 * dao.showOrderByTitle();// 문의 게시판 갖고올꺼 model.addAttribute("reviewAll", dto); }
	 */

	@RequestMapping("ReviewBoardNextPage2.do") // 리뷰 원하는 페이지 (조회수 역순)
	public void showBoardPage2(String startNum, Model model) {
		// System.out.println("도착한 스타트넘버:"+startNum);
		List<MovieReviewDTO> dto2 = dao.ReviewBoardNextPage2(startNum);// 리뷰 게시판 10개가져와 원하는 인덱스 만큼 갖고와
		model.addAttribute("allReview111", dto2);

	}

}// class
