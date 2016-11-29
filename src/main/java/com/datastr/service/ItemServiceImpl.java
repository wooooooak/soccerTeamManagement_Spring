package com.datastr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.datastr.DAO.ItemDAO;
import com.datastr.VO.ItemVO;

@Service
public class ItemServiceImpl implements ItemService {

	@Inject
	ItemDAO dao;
	
	@Override
	public void regist(ItemVO itemVO) throws Exception {
		dao.regist(itemVO);
	}

	@Override
	public List<ItemVO> listAll() throws Exception {
		return dao.listAll();
	}
}
