package com.sboot.matkit;

import java.io.*;
import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sboot.matkit.exception.AlreadyExistingException;
import com.sboot.matkit.exception.NotMatchingException;
import com.sboot.matkit.member.*;
import com.sboot.matkit.menu.*;
import com.sboot.matkit.order.*;

@Controller
public class TestController {

	@Autowired
	MemberDAO memberDAO;
	@Autowired
	MenuDAO menuDAO;
	@Autowired
	OrderDAO orderDAO;

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

			MemberDTO memberDTO = new MemberDTO(id, passwd, name, birthday, email, address, hp);

			if (passwd.equals(passwdch))
				memberDTO = memberDAO.insertMember(memberDTO);
			else
				throw new NotMatchingException("확인 비밀번호와 맞지 않습니다.");

			if (memberDAO.select_Id(id) == null) {////////////////////////////////////////////////////////
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

	// 한식 메뉴 상세정보_어묵탕, 비빔밥, 순대국, 떡갈비
	@RequestMapping("/view_fishcakes")
	public String view_fishcakes(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("모듬 어묵탕 550g");

		model.addAttribute("menuDTO", menuDTO);

		return "view_fishcakes";
	}

	@RequestMapping("/view_bibimbab")
	public String view_bibimbab(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("테이스티 비빔밥 세트");

		model.addAttribute("menuDTO", menuDTO);

		return "view_bibimbab";
	}

	@RequestMapping("/view_soondae")
	public String view_soondae(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("찹쌀진 순대국");

		model.addAttribute("menuDTO", menuDTO);

		return "view_soondae";
	}

	@RequestMapping("/view_tteokgalbi")
	public String view_tteokgalbi(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("연탄떡갈비 간장타입");

		model.addAttribute("menuDTO", menuDTO);

		return "view_tteokgalbi";
	}

//	=======================================

	// 중식 메뉴 상세정보_간짜장, 탕수육
	@RequestMapping("/view_jjajang")
	public String view_jjajang(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("풍미가득 간짜장");

		model.addAttribute("menuDTO", menuDTO);

		return "view_jjajang";
	}

	@RequestMapping("/view_tang")
	public String view_tang(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("풍미가득 탕수육");

		model.addAttribute("menuDTO", menuDTO);

		return "view_tang";
	}

//	=======================================

	// 양식 메뉴 상세정보_피자, 토마토 파스타, 오일 파스타, 리조또
	@RequestMapping("/view_pizza")
	public String view_pizza(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("디아볼라피자 410g");

		model.addAttribute("menuDTO", menuDTO);

		return "view_pizza";
	}

	@RequestMapping("/view_tomatopasta")
	public String view_tomatopasta(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("토마토 파스타 630g");

		model.addAttribute("menuDTO", menuDTO);

		return "view_tomatopasta";
	}

	@RequestMapping("/view_oilpasta")
	public String view_oilpasta(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("오일파스타 밀키트");

		model.addAttribute("menuDTO", menuDTO);

		return "view_oilpasta";
	}

	@RequestMapping("/view_risotto")
	public String view_risotto(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("리조또 밀키트");

		model.addAttribute("menuDTO", menuDTO);

		return "view_risotto";
	}

//	=======================================

	// 반찬 메뉴 상세정보_깍두기, 오징어불고기, 멸치, 낫또
	@RequestMapping("/view_kimchi")
	public String view_kimchi(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("조선호텔 깍두기 1kg");

		model.addAttribute("menuDTO", menuDTO);

		return "view_kimchi";
	}

	@RequestMapping("/view_ojing")
	public String view_ojing(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("오징어 볶음 불고기");

		model.addAttribute("menuDTO", menuDTO);

		return "view_ojing";
	}

	@RequestMapping("/view_stirfry")
	public String view_stirfry(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("꽈리 멸치 볶음 90g");

		model.addAttribute("menuDTO", menuDTO);

		return "view_stirfry";
	}

	@RequestMapping("/view_natto")
	public String view_natto(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("제주콩 낫또 50g");

		model.addAttribute("menuDTO", menuDTO);

		return "view_natto";
	}

//	=======================================

	// 샐러드 메뉴 상세정보_치킨샐러드, 콥샐러드, 과일샐러드
	@RequestMapping("/view_chickensalad")
	public String view_chickensalad(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("치킨샐러드");

		model.addAttribute("menuDTO", menuDTO);

		return "view_chickensalad";
	}

	@RequestMapping("/view_cobbsalad")
	public String view_cobbsalad(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("콥샐러드");

		model.addAttribute("menuDTO", menuDTO);

		return "view_cobbsalad";
	}

	@RequestMapping("/view_fruitsalad")
	public String view_fruitsalad(Model model) {
		MenuDTO menuDTO = menuDAO.get_menu_item("과일샐러드");

		model.addAttribute("menuDTO", menuDTO);

		return "view_fruitsalad";
	}

	// 장바구니로 넣어줌
	@GetMapping(value = "/move_to_cart")
	public void move_to_cart(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession(true);

		List<CartDTO> cart_list = (List<CartDTO>) session.getAttribute("cart_list");

		String p_image = request.getParameter("p_image");
		String p_name = request.getParameter("p_name");
		String price = request.getParameter("price");
		String cnt = request.getParameter("cnt");

		int int_price = Integer.parseInt(price);

		System.out.println("p_image" + p_image + "p_name: " + p_name + ", price: " + int_price + ", cnt: " + cnt);

		if (cart_list == null) {
			cart_list = new ArrayList<CartDTO>();
		}

		CartDTO cartDTO = new CartDTO(p_image, p_name, int_price, Integer.parseInt(cnt));

		cart_list.add(cartDTO);

		session.setAttribute("cart_list", cart_list);

		response.sendRedirect("/cart_in");
	}

	@RequestMapping(value = "/cart_in", method = RequestMethod.GET)
	public String cart_in(HttpSession session, Model model) throws Exception {
		List<CartDTO> cart_list = (List<CartDTO>) session.getAttribute("cart_list");

		if (cart_list == null) {
			cart_list = new ArrayList<CartDTO>();
		}
		
		model.addAttribute("cart_list", cart_list);

		return "cart_in";
	}

	@PostMapping(value = "/pay")
	public String pay() {
		return "pay";
	}

	@GetMapping(value = "/pay_success")
	public void pay_success(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		List<CartDTO> cart_list = (List<CartDTO>) session.getAttribute("cart_list");
		MemberDTO member = (MemberDTO) session.getAttribute("login");

		OrderDTO orderDTO = null;

		for (CartDTO cart_item : cart_list) {
			int order_total = cart_item.getCart_cnt() * cart_item.getCart_price();
			orderDTO = new OrderDTO(cart_item.getCart_jpg(), cart_item.getCart_name(), member.getEmail(),
					cart_item.getCart_price(), cart_item.getCart_cnt(), order_total);
			orderDAO.insert_order(orderDTO);
		}

		System.out.println("success");

		session.removeAttribute("cart_list");

		response.sendRedirect("/");
	}

	@GetMapping(value = "/pay_fail")
	public void pay_fail(HttpServletResponse response) throws Exception {
		System.out.println("fail");

		response.sendRedirect("/cart_in");
	}

	@RequestMapping(value = "/order_check", method = RequestMethod.GET)
	public String order_check(HttpSession session, Model model) {
		MemberDTO member = (MemberDTO) session.getAttribute("login");

		List<OrderDTO> order_list = orderDAO.get_order_list(member.getEmail());

		model.addAttribute("order_list", order_list);

		return "order_check";
	}

	@PostMapping(value = "/remove_cart_item")
	public void remove_cart_item(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		String cart_name_for_delete = request.getParameter("cart_name_for_delete");
		List<CartDTO> cart_list = (List<CartDTO>) session.getAttribute("cart_list");

		for (CartDTO cart_item : cart_list) {
			if (cart_item.getCart_name().equals(cart_name_for_delete)) {
				cart_list.remove(cart_item);
				break;
			}
		}

		session.setAttribute("cart_list", cart_list);

		response.sendRedirect("/cart_in");
	}
	
	@GetMapping(value = "/remove_cart")
	public void remove_cart(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		List<CartDTO> cart_list = (List<CartDTO>) session.getAttribute("cart_list");

		cart_list.removeAll(cart_list);

		session.setAttribute("cart_list", cart_list);

		response.sendRedirect("/cart_in");
	}
}
