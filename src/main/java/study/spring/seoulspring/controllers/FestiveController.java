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
public class FestiveController {

	@Autowired
	DepartmentService departmentService;

	@Autowired
	ViewService viewService;


	
	@RequestMapping(value = "festive/festive.do", method = RequestMethod.GET)
	public String festive(Locale locale, Model model) {

		return "festive/festive";
	}
	@RequestMapping(value = "festive/festive_detail.do", method = RequestMethod.GET)
	public String festive_detail(Locale locale, Model model) {

		return "festive/festive_detail";
	}



}
