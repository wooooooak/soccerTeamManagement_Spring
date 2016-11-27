package com.datastr.web;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.datastr.service.FinanceService;
import com.datastr.service.FplayerService;
import com.datastr.service.MarketService;
import com.datastr.service.StaffService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	FplayerService FpService;
	
	@Inject
	StaffService staffService;
	
	@Inject
	MarketService marketService;
	
	@Inject
	FinanceService financeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Intro(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "Intro";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "home";
	}
	
	
	/*web/listView ��� url�� �ԷµǸ� ��ó�� ����Ǵ� �޼���*/
	@RequestMapping(value = "/listView", method = RequestMethod.GET)
	public String listView(Locale locale, Model model) {
		
		try {
			model.addAttribute("fplayerList", FpService.listAll());
			model.addAttribute("staffList", staffService.listAll());
			model.addAttribute("finance", financeService.getList());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "listView";
	}
	
	@RequestMapping(value = "/market", method = RequestMethod.GET)
	public void market(Locale locale, Model model) {
		
		try {
			model.addAttribute("marketList", marketService.listAllOrderBy("name"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

		/*�������̺� ���Ľ� ����Ǵ� ���� �ڵ� 
		 * db���� �޾ƿ� ������ model�� �־ jsp�� �ѷ���
		 * */
	@RequestMapping(value = "/listAllOrderBy/{order}", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public String listAllOrderBy(@PathVariable("order") String order, Model model)throws Exception {
		logger.info("listAllOrderBy DO");
		try {
			logger.info(order);
			model.addAttribute("fplayerList", FpService.listAllOrderBy(order));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "fptable";
	}
	@RequestMapping(value = "/staffListAllOrderBy/{order}", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public String staffListAllOrderBy(@PathVariable("order") String order, Model model)throws Exception {
		logger.info("staffListAllOrderBy DO");
		try {
			logger.info(order);
			model.addAttribute("staffList", staffService.listAllOrderBy(order));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "staffTable";
	}
	@RequestMapping(value = "/marketOrderBy/{order}", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public String marketOrderBy(@PathVariable("order") String order, Model model)throws Exception {
		logger.info("marketOrderBy DO");
		try {
			logger.info(order);
			model.addAttribute("marketList", marketService.listAllOrderBy(order));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "marketTable";
	}
	
	
}
