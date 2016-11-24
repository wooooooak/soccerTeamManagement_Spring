package com.datastr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.datastr.DAO.FinanceDAO;
import com.datastr.VO.FinanceVO;

@Service
public class FinanceServiceImpl implements FinanceService {

	
	@Inject
	FinanceDAO dao;
	
	@Override
	public List<FinanceVO> getList() throws Exception {
		return dao.getList();
	}

	@Override
	public void update_Tr_fee(Integer transfer_fee) throws Exception {
		dao.update_Tr_fee(transfer_fee);
	}


	@Override
	public void update_player_Salary(Integer salary) throws Exception {
		dao.update_player_Salary(salary);
	}

	@Override
	public void update_staff_Salary(Integer salary) throws Exception {
		dao.update_staff_Salary(salary);
	}

}
