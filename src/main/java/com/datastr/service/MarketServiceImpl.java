package com.datastr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.datastr.DAO.MarketDAO;
import com.datastr.VO.MarketVO;

@Service
public class MarketServiceImpl implements MarketService {

	
	@Inject
	MarketDAO dao;
	
	
	@Override
	public List<MarketVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public void regist(MarketVO marketVO) throws Exception {
		dao.regist(marketVO);
	}

	@Override
	public List<MarketVO> listAllOrderBy(String order) throws Exception {
		return dao.listAllOrderBy(order);
	}

	@Override
	public MarketVO getone(Integer idno) throws Exception {
		return dao.getone(idno);
	}

	@Override
	public void delete(Integer idno) throws Exception {
		System.out.println("delete Service : "+idno);
		dao.delete(idno);
	}
	
	

}
