package com.sboot.matkit;

import java.io.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sboot.matkit.exception.AlreadyExistingException;
import com.sboot.matkit.exception.NotMatchingException;
import com.sboot.matkit.member.*;

@Controller
public class TestController {

	MemberDAO memberDAO = new MemberDAO();

	@RequestMapping("/")
	public String index(Model model) {
		return "index";
	}

//	=======================================
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(final HttpSession session) {
		if (session.getAttribute("login") != null)
			session.removeAttribute("login");

		session.invalidate();

		return "redirect:/";
	}

//	=======================================
	
	// 로그인
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	// 로그인 설정
	@PostMapping("/login")
	public void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			HttpSession session = request.getSession(true);

			String inputUserId = request.getParameter("id"); // 입력된 아이디 저장
			String inputUserPwd = request.getParameter("passwd"); // 입력된 비밀번호 저장

			MemberDTO memberDTO = new MemberDTO(inputUserId, inputUserPwd);

			memberDTO = memberDAO.selectJsp_memberOne(memberDTO);

			session.setAttribute("login", memberDTO);

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			response.sendRedirect("/");
		}
	}

//	=======================================
	
	// 회원가입
	@RequestMapping("/join")
	public String join() {
		return "join";
	}

	// 회원가입 설정
	@PostMapping(value = "/join")
	public void join(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			int no = request.getIntHeader("no");
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			String passwdch = request.getParameter("passwdch");
			String name = request.getParameter("name");
			String birthday = request.getParameter("birthday");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String hp = request.getParameter("hp");

			// 입력받은 아이디 가지고 회원을 검색해보기
			// 검색해서 있으면 throw new Exception
			// 회원 없다고 반환되면 그 때 비밀번호 체크해도 됨 (passwd.equals(passwdch))
			
			MemberDTO memberDTO = new MemberDTO(no, id, passwd, name, birthday, email, address, hp);

			if (passwd.equals(passwdch))
				memberDTO = memberDAO.insertMember(memberDTO);
			else
				throw new NotMatchingException("확인 비밀번호와 맞지 않습니다.");

			if (memberDAO.select_Id(id) == 0) {////////////////////////////////////////////////////////
				throw new AlreadyExistingException("이미 존재하는 계정입니다.");
			} else {
				System.out.println(memberDTO.toString());

				response.sendRedirect("/login");
			}
		} catch (NotMatchingException ex) {
			response.setContentType("text/html; charset=UTF-8");

			PrintWriter out = response.getWriter();

			out.println("<script>alert('확인 비밀번호와 맞지 않습니다.'); location.href='/join';</script>");

			out.flush();
		} catch (AlreadyExistingException ex) {
			response.setContentType("text/html; charset=UTF-8");

			PrintWriter out = response.getWriter();

			out.println("<script>alert('이미 존재하는 계정입니다.'); location.href='/join';</script>");

			out.flush();
		}
	}

//	=======================================

	// 해더_카테고리_소개
	@RequestMapping("/intro")
	public String intro() {
		return "intro";
	}

	// 해더_카테고리_인기상품
	@RequestMapping("/best")
	public String best() {
		return "best";
	}

	// 해더_카테고리_밀키트_한식/중식/양식/반찬/셀러드
	@RequestMapping("/cate_korean")
	public String cate_korean() {
		return "cate_korean";
	}

	@RequestMapping("/cate_china")
	public String cate_china() {
		return "cate_china";
	}

	@RequestMapping("/cate_italian")
	public String cate_italian() {
		return "cate_italian";
	}

	@RequestMapping("/cate_banchan")
	public String cate_banchan() {
		return "cate_banchan";
	}

	@RequestMapping("/cate_salad")
	public String cate_salad() {
		return "cate_salad";
	}
	
	// 해더_카테고리_NEWS_공지사항_이벤트
	@RequestMapping("/communi_notice")
	public String communi_notice() {
		return "communi_notice";
	}
	@RequestMapping("/communi_event")
	public String communi_event() {
		return "communi_event";
	}
	
	// 해더_카테고리_FAQ_자주하는질문
	@RequestMapping("/communi_FAQ")
	public String communi_FAQ() {
		return "communi_FAQ";
	}
	
	// 해더_카테고리_REVIEW_상품후기
	@RequestMapping("/communi_review")
	public String communi_review() {
		return "communi_review";
	}

//	=======================================
	
	//한식 메뉴 상세정보_어묵탕, 비빔밥, 순대국, 떡갈비
	@RequestMapping("/view_fishcakes")
	public String view_fishcakes() {
		return "view_fishcakes";
	}
	@RequestMapping("/view_bibimbab")
	public String view_bibimbab() {
		return "view_bibimbab";
	}
	@RequestMapping("/view_soondae")
	public String view_soondae() {
		return "view_soondae";
	}
	@RequestMapping("/view_tteokgalbi")
	public String view_tteokgalbi() {
		return "view_tteokgalbi";
	}

//	=======================================
	
	//중식 메뉴 상세정보_간짜장, 탕수육
	@RequestMapping("/view_jjajang")
	public String view_jjajang() {
		return "view_jjajang";
	}
	@RequestMapping("/view_tang")
	public String view_tang() {
		return "view_tang";
	}
	
//	=======================================
	
	//양식 메뉴 상세정보_피자, 토마토 파스타, 오일 파스타, 리조또
	@RequestMapping("/view_pizza")
	public String view_pizza() {
		return "view_pizza";
	}
	@RequestMapping("/view_tomatopasta")
	public String view_tomatopasta() {
		return "view_tomatopasta";
	}
	@RequestMapping("/view_oilpasta")
	public String view_oilpasta() {
		return "view_oilpasta";
	}
	@RequestMapping("/view_risotto")
	public String view_risotto() {
		return "view_risotto";
	}
	
//	=======================================
	
	//반찬 메뉴 상세정보_깍두기, 오징어불고기, 멸치, 낫또
	@RequestMapping("/view_kimchi")
	public String view_kimchi() {
		return "view_kimchi";
	}
	@RequestMapping("/view_ojing")
	public String view_ojing() {
		return "view_ojing";
	}
	@RequestMapping("/view_stirfry")
	public String view_stirfry() {
		return "view_stirfry";
	}
	@RequestMapping("/view_natto")
	public String view_natto() {
		return "view_natto";
	}
	
//	=======================================
	
	//샐러드 메뉴 상세정보_치킨샐러드, 콥샐러드, 과일샐러드
	@RequestMapping("/view_chickensalad")
	public String view_chickensalad() {
		return "view_chickensalad";
	}
	@RequestMapping("/view_cobbsalad")
	public String view_cobbsalad() {
		return "view_cobbsalad";
	}
	@RequestMapping("/view_fruitsalad")
	public String view_fruitsalad() {
		return "view_fruitsalad";
	}
	
}
