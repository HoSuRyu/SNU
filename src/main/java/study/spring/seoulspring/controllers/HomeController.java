package study.spring.seoulspring.controllers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject; // JSON객체 생성
import org.json.simple.parser.JSONParser; // JSON객체 파싱
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import study.spring.seoulspring.helper.WebHelper;
import study.spring.seoulspring.model.Announce;
import study.spring.seoulspring.model.Festive;
import study.spring.seoulspring.model.Member;
import study.spring.seoulspring.model.View;
import study.spring.seoulspring.service.AnnounceService;
import study.spring.seoulspring.service.DepartmentService;
import study.spring.seoulspring.service.FestiveService;
import study.spring.seoulspring.service.ViewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	FestiveService festiveService;
	@Autowired
	AnnounceService announceService;
	@Autowired
	DepartmentService departmentService;
	@Autowired
	WebHelper webHelper;
	@Autowired
	ViewService viewService;

	@Value("#{servletContext.contextPath}")
	String contextPath;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		// 공지사항 4개
		Announce input = new Announce();
		Announce.setOffset(0);
		Announce.setListCount(4);
		List<Announce> output = null;

		// 홍보게시판
		Festive input1 = new Festive();
		Festive.setOffset(0);
		Festive.setListCount(2);
		List<Festive> output1 = null;

		try {
			output = announceService.selectList(input);
			output1 = festiveService.selectList(input1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		model.addAttribute("output1", output1);

		return "home";
	}

	@RequestMapping(value = "/pdf.do", method = RequestMethod.GET)
	public String pdf(Model model) {

		List<String> list = new ArrayList<String>();
		list.add("Java");
		list.add("파이썬");
		list.add("R");
		list.add("C++");
		list.add("자바스크립트");
		list.add("Ruby");
		list.add("스칼라");
		list.add("클로져");
		list.add("자바");

		// 뷰에게 전달할 데이터 저장
		model.addAttribute("list", list);

		// 출력할 뷰 이름 리턴
		return "pdf";
	}

	@RequestMapping(value = "/snu_mbti.do", method = RequestMethod.GET)
	public String mbti(Locale locale, Model model) {

		return "snu_mbti";
	}

	@RequestMapping(value = "game/game.do", method = RequestMethod.GET)
	public String game(Locale locale, Model model) {

		return "game/game";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model, HttpServletRequest request) {

		String referer = request.getHeader("REFERER");
		model.addAttribute("referer", referer);

		return "login";
	}

	@RequestMapping(value = "/login_ok.do", method = RequestMethod.POST)
	public ModelAndView login(Locale locale, HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam("si_id") String si_id, @RequestParam("si_pwd") String si_pwd)
			throws MalformedURLException, IOException {

		// 서울대 페이지를 통해 로그인
		String id = si_id;
		String pw = si_pwd;

		String postString = "method=json&si_id=" + id + "&si_pwd=" + java.net.URLEncoder.encode(pw, "UTF-8");
		HttpURLConnection urlConnection = (HttpURLConnection) new URL(
				"https://sso.snu.ac.kr/safeidentity/modules/auth_idpwd").openConnection();
		urlConnection.setDoOutput(true);
		urlConnection.setDoInput(true);
		urlConnection.setRequestMethod("POST");
		urlConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
		urlConnection.getOutputStream().write(postString.getBytes());
		java.io.BufferedReader br = new java.io.BufferedReader(
				new java.io.InputStreamReader(urlConnection.getInputStream()));
		StringBuilder sb = new StringBuilder();

		String line;
		while ((line = br.readLine()) != null) {
			sb.append(line).append("\n");
		}

		// json 데이터 파싱
		String jsonStr = sb.toString().trim();
		JSONParser parser = new JSONParser();
		Object obj = null;
		try {
			obj = parser.parse(jsonStr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONObject jsonObj = (JSONObject) obj;
		Member ouput = new Member();
		ouput.setName((String) jsonObj.get("SA_name"));
		ouput.setDepartment((String) jsonObj.get("SA_gr1suborgname"));
		ouput.setId((String) jsonObj.get("SA_mail"));
		if ((String) jsonObj.get("SA_gr1memberkey") != null) 
		{
			ouput.setStudentid(((String) jsonObj.get("SA_gr1memberkey")).replace("-", ""));
		}
		model.addAttribute("ouput", ouput);

		// session 설정
		HttpSession session = request.getSession();
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// 이전페이지

		String redirectUrl = this.contextPath + "/";
		Member ouput1 = new Member();
		if (id.equals("root") && pw.equals("123qwe!@#")) {
			ouput1.setName("관리자");
			ouput1.setDepartment("관리부서");
			ouput1.setId("관리자");
			session.setAttribute("member", ouput1);
			return this.webHelper.redirect(redirectUrl, "관리자님 안녕하세요.");

		}
		if (id.equals("hs020600") && pw.equals("4568527wa")) {
			ouput1.setName("류호수");
			ouput1.setDepartment("매니저1");
			ouput1.setId("매니저1");
			ouput1.setStudentid("201511580");
			session.setAttribute("member", ouput1);
			return this.webHelper.redirect(redirectUrl, "류호수님 안녕하세요.");

		}

		if (jsonObj.get("SA_UID") == null) {
			return webHelper.redirect(null, "로그인실패");
		}
		session.setAttribute("member", ouput);

		// 이전 페이지 URL 설정

		return this.webHelper.redirect(redirectUrl, jsonObj.get("SA_name") + "님 안녕하세요.");
	}

	@RequestMapping(value = { "/logout.do" }, method = { org.springframework.web.bind.annotation.RequestMethod.GET })
	public ModelAndView logout(Locale locale, Model model, HttpServletRequest request) {
		String referer = request.getHeader("REFERER");
		HttpSession session = request.getSession();
		session.invalidate();
		String redirectUrl = contextPath;

		return this.webHelper.redirect(redirectUrl, null);
	}

	@RequestMapping("/busin")
	public String busin() {
		return "busin";
	}

	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String view(Locale locale, Model model) {

		View input = null;
		try {
			input = viewService.ViewItem();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("input", input);
		return "view";
	}

	@RequestMapping(value = "/Q&A.do", method = RequestMethod.GET)
	public String department2(Locale locale, Model model) {

		return "Q&A";
	}

	@RequestMapping(value = { "/count.do" }, method = RequestMethod.GET)
	@ResponseBody
	public void ViewCountUpdate(String title) {

	}

}
