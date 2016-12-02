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
import com.datastr.VO.ItemVO;
import com.datastr.VO.MarketVO;
import com.datastr.VO.StaffVO;
import com.datastr.VO.UpdatePlayerVO;
import com.datastr.VO.UpdateStaffVO;
import com.datastr.service.FinanceService;
import com.datastr.service.FplayerService;
import com.datastr.service.ItemService;
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
	
	@Inject
	ItemService ItemService;

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
	
	 /*--------------------------------------------------등록 메소드------------------------------------------------*/
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
			financeService.update_staff_Salary(salary/4);
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
	@RequestMapping(value = "/ItemRegist", method = RequestMethod.POST,produces = "application/text; charset=utf8")
	public @ResponseBody ResponseEntity<String> ItemRegist(ItemVO itemVO) throws Exception {
		logger.info("ItemRegist do");
		logger.info(itemVO.toString());
		ResponseEntity<String> entity = null;
		try {
			ItemService.regist(itemVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	
/*	wishList에 등록
	이적시장에 등록 버튼을 눌렀을떄 호출되는 서버 코드
	재정변화는 없음*/
	
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
	
	
	/*------------------------------- 데이터 수정-----------------------*/
	@RequestMapping(value = "/updatePlayer",method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<String> updatePlayer(UpdatePlayerVO UpdatePlayerVO) throws Exception {
		System.out.println("updatePlayer");
		logger.info(UpdatePlayerVO.toString());
		logger.info("바뀔 주급 : "+UpdatePlayerVO.getSalary());
		
		int idno = UpdatePlayerVO.getIdno();
		FplayerVO fplayerVO2;
		ResponseEntity<String> entity = null;
		try {
			fplayerVO2 = fpservice.getone(idno);
			logger.info("기존 주급 : "+fplayerVO2.getSalary());
			
			financeService.update_player_Salary(UpdatePlayerVO.getSalary() - fplayerVO2.getSalary());
			fpservice.updatePlayer(UpdatePlayerVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	@RequestMapping(value = "/updateStaff",method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<String> updateStaff(UpdateStaffVO updateStaffVO) throws Exception {
		System.out.println("updateStaffVO 실행");
		logger.info(updateStaffVO.toString());
		logger.info("바뀔 주급 : "+updateStaffVO.getSalary());
		
		int pno = updateStaffVO.getPno();
		StaffVO staffVO2;
		ResponseEntity<String> entity = null;
		try {
			staffVO2 = staffService.getone(pno);
			logger.info("기존 주급 : "+staffVO2.getSalary());
			logger.info("재정 변화 (주급은 나누기 4) : "+staffVO2.getSalary()+"-"+updateStaffVO.getSalary());
			
			financeService.update_staff_Salary((updateStaffVO.getSalary() - staffVO2.getSalary())/4);
			staffService.updateStaff(updateStaffVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	@RequestMapping(value = "/updateItem/{idno}/{count}",method = RequestMethod.POST)
	public @ResponseBody ResponseEntity<String> updateItem(@PathVariable("idno") Integer idno,@PathVariable("count") Integer count) 
																				throws Exception {
		System.out.println("updateItem 실행");
		ItemVO itemVO;
		ResponseEntity<String> entity = null;
		try {
			itemVO = new ItemVO();
			itemVO.setIdno(idno);
			itemVO.setCount(count);
			ItemService.update(itemVO);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	
	/*------------------선수 방출(데이터 삭제)-------------------*/
	
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
			financeService.update_staff_Salary(salary/4);
			staffService.release(pno);
			entity =new ResponseEntity<String>("success",HttpStatus.OK);
			System.out.println(entity.toString());
		} catch (Exception e) {
			e.printStackTrace();
			entity =new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
/*	선수 방출 버튼을 눌렀을때 호출되는 서버 코드
	재정의 변화도 같이 일어남*/
	
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
			/*financeService.update_Tr_fee(transfer_fee);    선수 방출시 이적료는 불변?*/
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
