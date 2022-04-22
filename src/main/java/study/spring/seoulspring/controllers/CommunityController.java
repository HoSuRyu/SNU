package study.spring.seoulspring.controllers;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import study.spring.seoulspring.helper.PageData;
import study.spring.seoulspring.helper.WebHelper;
import study.spring.seoulspring.model.Announce;
import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.model.Member;
import study.spring.seoulspring.model.Reply;
import study.spring.seoulspring.model.sabum;
import study.spring.seoulspring.service.AnnounceService;
import study.spring.seoulspring.service.CommunityService;
import study.spring.seoulspring.service.ReplyService;
import study.spring.seoulspring.service.SabumService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommunityController {

	@Autowired
	AnnounceService announceService;
	@Autowired
	SabumService sabumService;
	@Autowired
	ReplyService replyService;
	@Autowired
	CommunityService communityService;
	@Autowired
	WebHelper webHelper;

	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "community/Q&A.do", method = RequestMethod.GET)
	public String QandA(Locale locale, Model model, @RequestParam(value = "page", defaultValue = "1") int nowPage) {
		Community input = new Community(); 
		List<Community> output = null;
		
		Community output1 = null;
		try {
			output = communityService.selectList();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int totalCount = 0;
		int listCount = 10;
		int pageCount = 5;
		PageData pageData = null;

		try {
			totalCount = communityService.getCommunityCount();
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			Community.setOffset(pageData.getOffset());
			Community.setListCount(pageData.getListCount());

		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		

		try {
			output = communityService.selectlist(input);
			output1 = communityService.selectone();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("communityno", output1.getPostno() + 1);
		model.addAttribute("output", output);

		model.addAttribute("pageData", pageData);

		model.addAttribute("output", output);
		return "community/Q&A";
	}

	@RequestMapping(value = "community/Q&A_write.do", method = RequestMethod.GET)
	public String QandA_write(Locale locale, Model model) {

		return "community/Q&A_write";
	}

	@RequestMapping(value = "community/Q&A_write_insert.do", method = RequestMethod.POST)
	public ModelAndView QandA_write_insert(Locale locale, Model model, HttpServletRequest request,
			@RequestParam("postcategory") String postcategory, @RequestParam("posttype") String posttype,
			@RequestParam("posttitle") String posttitle, @RequestParam("postcontent") String postcontent,
			@RequestParam("postpublic") String postpublic) {

		HttpSession session = request.getSession();
		Member loginInfo = (Member) session.getAttribute("member");

		Community input = new Community();

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date time = new Date();
		String datetime = format.format(time);
		input.setPostcategory(postcategory);
		input.setPosttype(posttype);
		input.setPosttitle(posttitle);
		input.setPostcontent(postcontent);
		input.setPostpublic(postpublic);
		input.setPostdate(datetime);
		input.setName(loginInfo.getName());

		int result = 0;
		try {
			result = communityService.insertPost(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String redirectUrl = this.contextPath + "/community/Q&A.do";
		return this.webHelper.redirect(redirectUrl, null);
	}

	@RequestMapping(value = "community/post_delete.do", method = RequestMethod.GET)
	public ModelAndView post_delete(Locale locale, Model model, HttpServletRequest request,
			@RequestParam("postno") int postno) {

		Community input = new Community();
		input.setPostno(postno);
		int result = 0;
		try {
			result = communityService.DeletePost(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String redirectUrl = this.contextPath + "/community/Q&A.do";
		return this.webHelper.redirect(redirectUrl, null);
	}

	@RequestMapping(value = "community/FAQ.do", method = RequestMethod.GET)
	public String FAQ(Locale locale, Model model) {

		return "community/FAQ";
	}

	@RequestMapping(value = "community/Q&A_view_page.do", method = RequestMethod.POST)
	public String view_page(Locale locale, Model model, @RequestParam("postno") int postno) {

		// Reply객체 생성
		Reply reply = new Reply();
		reply.setPost_num(postno);
		List<Reply> re_comment = new ArrayList<>();

		// community객체 생성
		Community input = new Community();
		input.setPostno(postno);
		Community output = null;
		int update = 0;

		try {
			update = communityService.updatePostView(input);
			output = communityService.selectOne(input);
			re_comment = replyService.selectList(reply);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		model.addAttribute("reply", re_comment);

		return "community/Q&A_view_page";
	}

	// 공지사항
	@RequestMapping(value = "community/announce.do", method = RequestMethod.GET)
	public String announce(Locale locale, Model model, @RequestParam(value = "page", defaultValue = "1") int nowPage) {

		int totalCount = 0;
		int listCount = 1;
		int pageCount = 5;
		PageData pageData = null;

		try {
			totalCount = announceService.getAnnounceCount();
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			Announce.setOffset(pageData.getOffset());
			Announce.setListCount(pageData.getListCount());

		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		Announce input = new Announce();
		List<Announce> output = null;
		Announce output1 = null;
		try {
			output = announceService.selectList(input);
			output1 = announceService.selectOne();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("announceno", output1.getAnnounceno() + 1);
		model.addAttribute("output", output);

		model.addAttribute("pageData", pageData);

		return "community/announce";
	}

	@RequestMapping(value = "community/announce_detail.do", method = RequestMethod.GET)
	public String festive_detail(Locale locale, Model model, @RequestParam("announceno") int announceno) {

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

		Announce input = new Announce();
		input.setAnnounceno(announceno);

		Announce output = null;
		List<Announce> imgoutput = null;
		try {
			output = announceService.selectDetail(input);
			imgoutput = announceService.selectImgList(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String text = output.getText().replace("\r\n", "<br>");
		output.setText(text);
		model.addAttribute("output", output);
		model.addAttribute("imgoutput", imgoutput);
		return "community/announce_detail";
	}

	@RequestMapping(value = "community/announce_write.do", method = RequestMethod.GET)
	public String festive_write(Locale locale, Model model, @RequestParam("announceno") int announceno) {
		model.addAttribute("announceno", announceno);
		return "community/announce_write";
	}

	@RequestMapping(value = "community/announce_insert.do", method = RequestMethod.POST)
	public ModelAndView requestupload1(MultipartHttpServletRequest mtfRequest, Locale locale, Model model,
			HttpServletRequest request, @RequestParam("title") String title, @RequestParam("announceno") int announceno,
			@RequestParam("text") String text, @RequestParam MultipartFile thumbnail) {

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
		Announce input = new Announce();
		input.setTitle(title);
		input.setText(text);
		input.setPostdate(today);

		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		String src = mtfRequest.getParameter("src");
		System.out.println("src value : " + src);
		String img_name = "";

		String path = "/var/lib/tomcat9/webapps/announce/";

		List<Announce> input1 = new ArrayList<Announce>();
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
		int count = 0;
		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈
			if (fileSize != 0) {
				count++;

				Announce img = new Announce();

				System.out.println("originFileName : " + originFileName);
				System.out.println("fileSize : " + fileSize);

				String safeFile = path + originFileName + System.currentTimeMillis();

				img_name = originFileName + System.currentTimeMillis();

				img.setImg(img_name);
				img.setAnnounceno(announceno);
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
				result = announceService.insertImg(input1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		try {
			result = announceService.insertAnnounce(input);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String redirectUrl = this.contextPath + "/community/announce.do";
		return this.webHelper.redirect(redirectUrl, null);

	}

	@RequestMapping(value = "community/Hi.do", method = RequestMethod.GET)
	public String Hi(Locale locale, Model model) {

		return "community/Hi";
	}

	@RequestMapping(value = "community/Hi_detail.do", method = RequestMethod.GET)
	public String HiDetail(Locale locale, Model model, @RequestParam("num") int num) {

		sabum sabum = new sabum();
		sabum.setNum(num);
		List<sabum> output = new ArrayList<>();

		try {
			output = sabumService.SelectSabum(sabum);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("output", output);
		return "community/Hi_detail";
	}

}
