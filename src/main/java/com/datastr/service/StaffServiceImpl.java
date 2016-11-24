package com.datastr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.datastr.DAO.StaffDAO;
import com.datastr.VO.StaffVO;

@Service
public class StaffServiceImpl implements StaffService {
	
	@Inject
	StaffDAO dao;

	public void regist(StaffVO staffVO) throws Exception {
		dao.regist(staffVO);
	}

	@Override
	public List<StaffVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public void release(Integer pno) throws Exception {
		dao.release(pno);
		
	}

	@Override
	public List<StaffVO> listAllOrderBy(String order) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAllOrderBy(order);
	}

	@Override
	public StaffVO getone(Integer idno) throws Exception {
		return dao.getone(idno);
	}

	
}
