package study.spring.seoulspring.controllers;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import study.spring.seoulspring.model.Department;
import study.spring.seoulspring.model.View;
import study.spring.seoulspring.service.DepartmentService;
import study.spring.seoulspring.service.ViewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	DepartmentService departmentService;
	
	@Autowired
	ViewService viewService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "home";
	}
	
	@RequestMapping("/busin")
	public String busin() {
		return "busin";
	}
	
	@RequestMapping(value="/pdf.do", method=RequestMethod.GET)
	public String pdf(Model model){
		
		List<String> list = new ArrayList<String>();
		list.add("Java");
		list.add("�뙆�씠�뜫");
		list.add("R");
		list.add("C++");
		list.add("�옄諛붿뒪�겕由쏀듃");
		list.add("Ruby");
		list.add("�뒪移쇰씪");
		list.add("�겢濡쒖졇");
		list.add("�옄諛�");
		
		//酉곗뿉寃� �쟾�떖�븷 �뜲�씠�꽣 ���옣
		model.addAttribute("list",list);
		
		//異쒕젰�븷 酉� �씠由� 由ы꽩
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
		//Department input = new Department();
		//input.setDname(department);
		//List<Department> departmentList = null;

		//try {
			//departmentList = departmentService.getDepartmentList(input);

		//} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		//}

		//model.addAttribute("departmentList", departmentList);

		return "Q&A";
	}

	@RequestMapping(value = { "/count.do" }, method = RequestMethod.GET)
	@ResponseBody
	public void ViewCountUpdate(String title) {
		
	}

}
