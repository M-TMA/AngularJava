package com.journaldev.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class MainTemplateController {

	@RequestMapping(value = "/detail_article")
	public String getComputersTemplate() {
		return "detail_article";
	}
}
