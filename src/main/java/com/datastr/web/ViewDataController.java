package com.datastr.web;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.datastr.service.FplayerService;


@Controller
@RequestMapping("/Viewdata")
public class ViewDataController {
	
	private static Logger logger = LoggerFactory.getLogger(ViewDataController.class);
	
	@Inject
	FplayerService service;
	
	@RequestMapping(value = "/fp/birth", method = RequestMethod.GET)
	public void listAllBitrh(Model model) throws Exception{
		logger.info("fp/birht do");
		model.addAttribute("fpBirth", service.listAllBirth());
	}
}
