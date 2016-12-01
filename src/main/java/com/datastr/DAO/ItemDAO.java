package com.datastr.DAO;

import java.util.List;

import com.datastr.VO.ItemVO;

public interface ItemDAO {
	
	public void regist(ItemVO itemVO) throws Exception;
	public void update(ItemVO itemVO) throws Exception;
	
	public List<ItemVO> listAll() throws Exception;
	
}
