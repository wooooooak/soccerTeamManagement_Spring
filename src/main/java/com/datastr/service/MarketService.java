package com.datastr.service;

import java.util.List;

import com.datastr.VO.MarketVO;

public interface MarketService {

	public List<MarketVO> listAll() throws Exception;
	public void regist(MarketVO marketVO) throws Exception;
	public List<MarketVO> listAllOrderBy(String order) throws Exception;
	public MarketVO getone(Integer idno)throws Exception;
	public void delete(Integer idno)throws Exception;
	
}
