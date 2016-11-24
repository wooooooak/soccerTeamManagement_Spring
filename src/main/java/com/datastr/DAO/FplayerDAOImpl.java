package com.datastr.DAO;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.datastr.VO.FplayerVO;
@Repository
public class FplayerDAOImpl implements FplayerDAO {

	private final static String namespace = "com.datastr.mappers.fplayerMapper";
	
	
	@Inject
	private SqlSession session;
	
	

	@Override
	public void regist(FplayerVO fplayerVO) throws Exception {
		session.insert(namespace + ".regist",fplayerVO);
	}

	@Override
	public void release(Integer idno) throws Exception {
		session.delete(namespace + ".release", idno);
	}


	@Override
	public List<FplayerVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll"); 
	}


	@Override
	public List<FplayerVO> listAllBirth() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAllBirth");
	}

	@Override
	public List<FplayerVO> listAllOrderBy(String order) throws Exception {
		System.out.println("dao : "+order);
		return session.selectList(namespace+".listAllOrderBy", order);
	}

	@Override
	public FplayerVO getone(Integer idno) throws Exception {
		System.out.println("fp getone : " + idno );
		return session.selectOne(namespace+".getone", idno);
	}

}
