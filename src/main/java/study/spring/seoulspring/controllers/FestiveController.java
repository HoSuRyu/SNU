package study.spring.seoulspring.controllers;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.*;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import study.spring.seoulspring.helper.PageData;
import study.spring.seoulspring.helper.WebHelper;
import study.spring.seoulspring.model.Department;
import study.spring.seoulspring.model.Festive;
import study.spring.seoulspring.model.FestiveImgList;
import study.spring.seoulspring.model.Member;
import study.spring.seoulspring.model.View;
import study.spring.seoulspring.service.DepartmentService;
import study.spring.seoulspring.service.FestiveService;
import study.spring.seoulspring.service.ViewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class FestiveController {

	@Autowired
	FestiveService festiveService;

	@Autowired
	ViewService viewService;

	@Autowired
	WebHelper webHelper;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "festive/festive.do", method = RequestMethod.GET)
	public String festive(Locale locale, HttpServletRequest request, Model model,
			@RequestParam(value = "page", defaultValue = "1") int nowPage) {

		// 오늘 날짜
		Calendar cal = Calendar.getInstance();
		int today_year = cal.get(Calendar.YEAR);
		int today_month = cal.get(Calendar.MONTH) + 1;
		String today = "";
		int today_date = cal.get(Calendar.DATE);
		if (today_month < 10) {
			today = today_year + "-0" + today_month + "-" + today_date;
		} else {
			today = today_year + "-" + today_month + "-" + today_date;
		}
		// 페이징

		int totalCount = 0;
		int listCount = 6;
		int pageCount = 5;
		PageData pageData = null;

		try {
			totalCount = festiveService.getFestiveCount();
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			Festive.setOffset(pageData.getOffset());
			Festive.setListCount(pageData.getListCount());

		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		Festive input = new Festive();

		List<Festive> output = null;
		Festive output1 = null;
		try {
			output = festiveService.selectList(input);
			output1 = festiveService.selectOne();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("festiveno", output1.getFestiveno() + 1);
		model.addAttribute("output", output);
		model.addAttribute("today", today);
		model.addAttribute("pageData", pageData);
		return "festive/festive";
	}

	@RequestMapping(value = "festive/festive_detail.do", method = RequestMethod.GET)
	public String festive_detail(Locale locale, Model model, @RequestParam("festiveno") int festiveno) {

		// 오늘 날짜
		Calendar cal = Calendar.getInstance();
		int today_year = cal.get(Calendar.YEAR);
		int today_month = cal.get(Calendar.MONTH) + 1;
		String today = "";
		int today_date = cal.get(Calendar.DATE);
		if (today_month < 10) {
			today = today_year + "-0" + today_month + "-" + today_date;
		} else {
			today = today_year + "-" + today_month + "-" + today_date;
		}

		model.addAttribute("today", today);

		Festive input = new Festive();
		input.setFestiveno(festiveno);

		Festive output = null;
		List<Festive> imgoutput = null;
		try {
			output = festiveService.selectDetail(input);
			imgoutput = festiveService.selectImgList(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String regex = "([\\p{Alnum}]+)://([a-z0-9ㄱ-ㅎ가-힣.\\-&/%=?:@#$(),.+;~\\_]+)";
		String text = output.getText().replace("\r\n", "<br>");
		Pattern p = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(text);
		String s = m.replaceAll("<a href='http://$2' target=_blank>http://$2</a>");
		output.setText(s);
		model.addAttribute("output", output);
		model.addAttribute("size", imgoutput.size());
		model.addAttribute("imgoutput", imgoutput);
		return "festive/festive_detail";
	}

	@RequestMapping(value = "festive/festive_delete.do", method = RequestMethod.POST)
	public ModelAndView festive_delete(Locale locale, Model model,
			@ModelAttribute(value = "FestiveImgList") FestiveImgList imgList,
			@RequestParam("festiveno") int festiveno) {
		Festive input = new Festive();
		input.setFestiveno(festiveno);
		String path = "/var/lib/tomcat9/webapps/upload/";
		List<Festive> imglist = imgList.getImgList();
		for (int i = 0; i < imglist.size(); i++) {
			File file = new File(path + imglist.get(i).getImg());
			if (file.exists()) {
				file.delete();
			}

		}
		try {
			int result = festiveService.DeleteFestive(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String redirectUrl = this.contextPath + "/festive/festive.do";
		return this.webHelper.redirect(redirectUrl, null);
	}

	@RequestMapping(value = "festive/festive_write.do", method = RequestMethod.GET)
	public String festive_delete(Locale locale, Model model, @RequestParam("festiveno") int festiveno) {
		model.addAttribute("festiveno", festiveno);

		return "festive/festive_write";
	}

	@RequestMapping(value = "/festive/ajax_test.do", method = { RequestMethod.POST })
	@ResponseBody
	public List<Member> test(@RequestParam("name") String name, @RequestParam("age") String age,
			@RequestParam("gender") String gender, Model model) {

		System.out.println(name);
		System.out.println(age);
		System.out.println(gender);
		Member member = new Member();
		member.setName(name);
		member.setId(age);
		member.setDepartment(gender);
		model.addAttribute("hosu", member);
		List<Member> output = new ArrayList();
		output.add(member);
		return output;

	}

	@RequestMapping(value = "festive/festive_update.do", method = RequestMethod.POST)
	public ModelAndView updateFestive(MultipartHttpServletRequest mtfRequest, Locale locale, Model model,
			@RequestParam("festiveno") int festiveno, @RequestParam("text") String text) {
		Festive input = new Festive();
		input.setText(text);
		input.setFestiveno(festiveno);
		try {
			int result = festiveService.updateFestive(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String redirectUrl = this.contextPath + "/festive/festive_detail.do?festiveno=" + festiveno;

		return this.webHelper.redirect(redirectUrl, null);
	}

	@RequestMapping(value = "festive/festive_insert.do", method = RequestMethod.POST)
	public ModelAndView requestupload1(MultipartHttpServletRequest mtfRequest, Locale locale, Model model,
			HttpServletRequest request, @RequestParam("title") String title, @RequestParam("festiveno") int festiveno,
			@RequestParam("text") String text, @RequestParam MultipartFile thumbnail,
			@RequestParam("end_date") String end_date) {

		Festive input = new Festive();
		input.setTitle(title);
		input.setText(text);
		input.setEnd_date(end_date);

		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		String src = mtfRequest.getParameter("src");
		System.out.println("src value : " + src);
		String img_name = "";

		String path = "/var/lib/tomcat9/webapps/upload/";
		String redirectUrl = this.contextPath + "/festive/festive.do";

		List<Festive> input1 = new ArrayList<Festive>();
		String thumbnailName = thumbnail.getOriginalFilename();// 썸네일 파일명
		long thumbnailfileSize = thumbnail.getSize(); // 썸네일 사이즈

		String save_thumbnailName = path + thumbnailName + System.currentTimeMillis(); // 파일저장경로
		String img_thumbnail = thumbnailName + System.currentTimeMillis(); // 파일 저장이
		try {
			thumbnail.transferTo(new File(save_thumbnailName));
		} catch (IllegalStateException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		input.setImg(img_thumbnail);
		// 썸네일 파일
		


		int result = 0;
		

		try {
			result = festiveService.insertFestive(input);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Festive output1 = null;
		try {
			output1 = festiveService.selectOne();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		int count = 0;
		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈
			if (fileSize != 0) {
				count++;

				Festive img = new Festive();

				System.out.println("originFileName : " + originFileName);
				System.out.println("fileSize : " + fileSize);

				String safeFile = path + originFileName + System.currentTimeMillis();

				img_name = originFileName + System.currentTimeMillis();

				img.setImg(img_name);
				img.setFestiveno(output1.getFestiveno());
				input1.add(img);
				try {
					mf.transferTo(new File(safeFile));
				} catch (IllegalStateException e) {

					e.printStackTrace();

				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();

				}

			}
		}

		if (count != 0) {
			try {
				result = festiveService.insertImg(input1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}


		return this.webHelper.redirect(redirectUrl, null);

	}
}
