package com.datastr.web;



import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.datastr.VO.FplayerVO;
import com.datastr.VO.MarketVO;
import com.datastr.VO.StaffVO;
import com.datastr.VO.UpdatePlayerVO;
import com.datastr.service.FinanceService;
import com.datastr.service.FplayerService;
import com.datastr.service.MarketService;
import com.datastr.service.StaffService;

@RestController
@RequestMapping("/data")
public class DataController {
	private static final Logger logger = LoggerFactory.getLogger(RestController.class);

	@Inject
	FplayerService fpservice;
	
	@Inject
	StaffService staffService;
	
	@Inject
	MarketService marketService;
	
	@Inject
	FinanceService financeService;
	

	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public ResponseEntity<List<FplayerVO>> register(Model model) throws Exception {
		ResponseEntity<List<FplayerVO>> entity = null;
		try {
			entity =new ResponseEntity<List<FplayerVO>>(fpservice.listAll(),HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<List<FplayerVO>>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	 /*--------------------------------------------------��� �޼ҵ�------------------------------------------------*/
	@RequestMapping(value = "/fpregister", method = RequestMethod.POST,produces = "application/text; charset=utf8")
	public @ResponseBody ResponseEntity<String> register(FplayerVO fplayerVO) throws Exception {
		logger.info("fpregister do");
		logger.info(fplayerVO.getSide_footer());
		
		int transfer_fee = fplayerVO.getTransfer_fee();
		int salary = fplayerVO.getSalary();
		
		ResponseEntity<String> entity = null;
		try {
			fpservice.regist(fplayerVO);
			financeService.update_Tr_fee(transfer_fee);
			financeService.update_player_Salary(salary);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value = "/staffRegister", method = RequestMethod.POST,produces = "application/text; charset=utf8")
	public @ResponseBody ResponseEntity<String> staffRegister(StaffVO staffVO) throws Exception {
		logger.info("StaffRegister do");
		logger.info(staffVO.getPosition());
		
		int salary = staffVO.getSalary();
		
		ResponseEntity<String> entity = null;
		try {
			staffService.regist(staffVO);
			financeService.update_staff_Salary(salary);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	@RequestMapping(value = "/insertMarket", method = RequestMethod.POST,produces = "application/text; charset=utf8")
	public @ResponseBody ResponseEntity<String> insertMarket(MarketVO marketVO) throws Exception {
		logger.info("insertMarket do");
		logger.info(marketVO.toString());
		ResponseEntity<String> entity = null;
		try {
			marketService.regist(marketVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	//wishList�� ���
	@RequestMapping(value = "/marketRegist/{idno}",method = RequestMethod.GET)
	public ResponseEntity<String> marketRegistGET(@PathVariable("idno") Integer idno) throws Exception {
		System.out.println("marketRegistGET");
		FplayerVO fplayerVO;
		MarketVO marketVO;
		ResponseEntity<String> entity = null;
		try {
			fplayerVO=fpservice.getone(idno);
			marketVO = new MarketVO(fplayerVO);
			logger.info(marketVO.toString());
			marketService.regist(marketVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	
	@RequestMapping(value = "/gotoOurList/{idno}/{salary}/{day}/{fee}",method = RequestMethod.POST)
	public ResponseEntity<String> gotoOurList(@PathVariable("idno") Integer idno,
							@PathVariable("salary") Integer salary,
							@PathVariable("day") String day,
							@PathVariable("fee") Integer fee) throws Exception {
		System.out.println("gotoOurList");
		FplayerVO fplayerVO;
		MarketVO marketVO;
		ResponseEntity<String> entity = null;
		
		try {
			marketVO=marketService.getone(idno);
			fplayerVO = new FplayerVO(marketVO);
			fplayerVO.setTransfer_fee(fee);
			fplayerVO.setSalary(salary);
			fplayerVO.setContract_end_time(day);
			int transfer_fee = fplayerVO.getTransfer_fee();
			int salary2 = fplayerVO.getSalary();
			logger.info(fplayerVO.toString());
			
			financeService.update_Tr_fee(transfer_fee);
			financeService.update_player_Salary(salary2);
			
			fpservice.regist(fplayerVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	/*���� ������ ����*/
	@RequestMapping(value = "/updatePlayer",method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<String> updatePlayer(UpdatePlayerVO UpdatePlayerVO) throws Exception {
		System.out.println("updatePlayer");
		logger.info(UpdatePlayerVO.toString());
		logger.info("�ٲ� �ֱ� : "+UpdatePlayerVO.getSalary());
		
		int idno = UpdatePlayerVO.getIdno();
		FplayerVO fplayerVO2;
		ResponseEntity<String> entity = null;
		try {
			fplayerVO2 = fpservice.getone(idno);
			logger.info("���� �ֱ� : "+fplayerVO2.getSalary());
			
			financeService.update_player_Salary(UpdatePlayerVO.getSalary() - fplayerVO2.getSalary());
			fpservice.updatePlayer(UpdatePlayerVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value = "/marketDelete/{idno}",method = RequestMethod.DELETE)
	public ResponseEntity<String> marketDelete(@PathVariable("idno") Integer idno) throws Exception {
		System.out.println("marketDlete");
		
		ResponseEntity<String> entity = null;
		try {
			marketService.delete(idno);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	

	@RequestMapping(value = "/staffrelease/{pno}", method ={RequestMethod.DELETE},produces = "application/text; charset=utf8")
	public ResponseEntity<String> staffrelease(@PathVariable("pno") Integer pno) throws Exception {
		logger.info("staffrelease do");
		logger.info(pno+"");
		ResponseEntity<String> entity = null;
		int salary=0;
		try {
			
			StaffVO staffVO = staffService.getone(pno);
			salary -= staffVO.getSalary();
			financeService.update_staff_Salary(salary);
			staffService.release(pno);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	@RequestMapping(value = "/fprelease/{idno}", method ={RequestMethod.DELETE},produces = "application/text; charset=utf8")
	public ResponseEntity<String> fprelease(@PathVariable("idno") Integer idno) throws Exception {
		logger.info("fprelease do");
		logger.info(idno+"");
		ResponseEntity<String> entity = null;
		int transfer_fee=0;
		int salary=0;
		try {
			FplayerVO fplayerVO=fpservice.getone(idno);
			transfer_fee -= fplayerVO.getTransfer_fee();
			salary -= fplayerVO.getSalary();
			financeService.update_Tr_fee(transfer_fee);
			financeService.update_player_Salary(salary);
			fpservice.release(idno);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
