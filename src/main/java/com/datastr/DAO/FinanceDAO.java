package com.datastr.DAO;

import java.util.List;

import com.datastr.VO.FinanceVO;

public interface FinanceDAO {
	
	public List<FinanceVO> getList() throws Exception;
	public void update_Tr_fee(Integer transfer_fee) throws Exception;
	public void update_player_Salary(Integer salary) throws Exception;
	public void update_staff_Salary(Integer salary) throws Exception;

}
