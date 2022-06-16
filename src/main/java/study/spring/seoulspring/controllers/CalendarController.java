package study.spring.seoulspring.controllers;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.model.DateData;
import study.spring.seoulspring.model.Reservation;
import study.spring.seoulspring.model.TimeTable;
import study.spring.seoulspring.service.CalendarService;
import study.spring.seoulspring.service.DepartmentService;
import study.spring.seoulspring.service.ReservationService;
import study.spring.seoulspring.service.ViewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CalendarController {

	@Autowired
	CalendarService calendarService;
	@Autowired
	DepartmentService departmentService;
	@Autowired
	WebHelper webHelper;
	@Autowired
	ViewService viewService;
	@Autowired
	ReservationService reservationService;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value = "reservation/reservation_delete.do", method = RequestMethod.GET)
	public ModelAndView post_delete(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam("calendarNo") int calendarNo) {
		Reservation input = new Reservation();
		input.setCalendarNo(calendarNo);
		int result = 0;
		try {
			result = reservationService.DeleteReservation(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		String message = " ";
		if(result ==0 ) 
		{
			message = "예약 취소 실패!";
		}
		else {
			message ="예약이 취소되었습니다.";
		}
		String redirectUrl = this.contextPath + "/calendar.do";
		response.setHeader("Content-Type", "text/html;charset=utf-8");
		return this.webHelper.redirect(redirectUrl,message);
	}

	@RequestMapping(value = { "/reservation/reservation_insert.do" }, method = RequestMethod.GET)
	@ResponseBody
	public int reservation_insert(Locale locale, Model model, HttpServletRequest request, HttpSession session,
			@RequestParam("start_time") String start_time, @RequestParam("end_time") String end_time,
			@RequestParam("student_name") String student_name, @RequestParam("student_phNum") String student_phNum,
			@RequestParam("student_id") int student_id, @RequestParam("people_num") int people_num,
			@RequestParam("roomNum") int roomNum, @RequestParam("date") String date,
			@RequestParam("purpose") String purpose,@RequestParam("timeCount") int timeCount) {

		double time = timeCount/2;
		Reservation input = new Reservation();
		input.setStarttime(start_time);
		input.setEndtime(end_time);
		input.setMembername(student_name);
		input.setPhonenum(student_phNum);
		input.setStudentid(student_id);
		input.setPeoplenum(people_num);
		input.setDate(date);
		input.setRoomNum(roomNum);
		input.setPurpose(purpose);
		input.setTimeCount(time);
		input.setDate(request.getParameter("date"));

		
		Reservation input2= new Reservation();
		input2.setStudentid(student_id);
		input2.setDate(date);
		input2.setRoomNum(roomNum);
		
		double result = 0;
		try {
			result =reservationService.TimeSum(input2);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if(result+time > 4) 
		{
			return 1;
		}
		else {
			try {
				result = reservationService.insertTime(input);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return 0;
		}
		

	}

	@RequestMapping(value = { "/reservation/info.do" }, method = RequestMethod.GET)
	public String reservationinfo(Model model, HttpServletRequest request, Locale locale,
			@RequestParam("studentid") String studentid,
			@RequestParam(value = "calendarNo", defaultValue = "0") int calendarNo) {

		List<TimeTable> output = null;
		TimeTable input = new TimeTable();
		input.setStudentid(studentid);
		if (calendarNo > 0) {
			input.setCalendarNo(calendarNo);
		}
		try {
			output = calendarService.selectList(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output", output);
		return "reservation/info";
	}

	@RequestMapping(value = { "/reservation.do" }, method = RequestMethod.POST)
	public String reservation(Model model, @RequestParam("reserve_date") String date,
			@RequestParam("room_num") int room_num) {

		String month = date.substring(5, 7);
		String day = date.substring(8);
		model.addAttribute("date", date);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("room_num", room_num);
		Reservation input = new Reservation();
		input.setDate(date);
		input.setRoomNum(room_num);
		List<Reservation> output = null;
		try {
			output = reservationService.selectList(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("output", output);

		return "/reservation";

	}

	@RequestMapping(value = "/conform.do", method = RequestMethod.GET)
	public String conform(Model model, HttpServletRequest request, Locale locale) {
		List<TimeTable> calendar = null;
		TimeTable input = new TimeTable();

		try {
			calendar = calendarService.selectList(input);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("calendar", calendar);
		return "/conform";
	}

	@RequestMapping(value = "/calendar.do", method = RequestMethod.GET)
	public String calendar(Model model, HttpServletRequest request, DateData dateData, Locale locale) {
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
		DateData calendarData;
		// 검색 날짜
		if (dateData.getDate().equals("") && dateData.getMonth().equals("")) {
			dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)), String.valueOf(cal.get(Calendar.MONTH)),
					String.valueOf(cal.get(Calendar.DATE)), null);
		}
		// 검색 날짜 end
		Map<String, Integer> today_info = dateData.today_info(dateData);
		List<DateData> dateList = new ArrayList<DateData>();
		// 실질적인 달력 데이터 리스트에 데이터 삽입 시작.
		// 일단 시작 인덱스까지 아무것도 없는 데이터 삽입
		for (int i = 1; i < today_info.get("start"); i++) {
			calendarData = new DateData(null, null, null, null);
			dateList.add(calendarData);
		}

		// 날짜 삽입
		for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
			if (i == today_info.get("today")) {
				calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "today");
			} else {
				calendarData = new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()),
						String.valueOf(i), "normal_date");
			}
			dateList.add(calendarData);
		}

		// 달력 빈곳 빈 데이터로 삽입
		int index = 7 - dateList.size() % 7;

		if (dateList.size() % 7 != 0) {

			for (int i = 0; i < index; i++) {
				calendarData = new DateData(null, null, null, null);
				dateList.add(calendarData);
			}
		}
		System.out.println(dateList);

		// 배열에 담음
		model.addAttribute("dateList", dateList); // 날짜 데이터 배열
		model.addAttribute("today_info", today_info);
		model.addAttribute("today", today);

		return "/calendar";
	}

}
