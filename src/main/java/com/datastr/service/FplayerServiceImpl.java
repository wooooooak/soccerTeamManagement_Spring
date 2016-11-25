package com.datastr.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.datastr.DAO.FplayerDAO;
import com.datastr.VO.FplayerVO;
import com.datastr.VO.UpdatePlayerVO;
@Service
public class FplayerServiceImpl implements FplayerService {

	@Inject
	FplayerDAO dao;
	

	@Override
	public void regist(FplayerVO fplayerVO) throws Exception {
		dao.regist(fplayerVO);
	}


	@Override
	public List<FplayerVO> listAll() throws Exception {
		return dao.listAll();
	}




	@Override
	public List<FplayerVO> listAllBirth() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAllBirth();
	}


	@Override
	public void release(Integer idno) throws Exception {
		dao.release(idno);
	}


	@Override
	public List<FplayerVO> listAllOrderBy(String order) throws Exception {
		return dao.listAllOrderBy(order);
	}


	@Override
	public FplayerVO getone(Integer idno) throws Exception {
		return dao.getone(idno);
	}


	@Override
	public void updatePlayer(UpdatePlayerVO updatePlayerVO) throws Exception {
		dao.updatePlayer(updatePlayerVO);
	}

}
