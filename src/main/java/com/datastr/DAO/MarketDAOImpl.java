package com.datastr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.datastr.VO.MarketVO;

@Repository
public class MarketDAOImpl implements MarketDAO {

	
	private final static String namespace = "com.datastr.mappers.marketMapper";
	
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<MarketVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public void regist(MarketVO marketVO) throws Exception {
		System.err.println("marketVO reigst  :  " +marketVO.toString());
		session.insert(namespace+".regist", marketVO);
	}

	@Override
	public List<MarketVO> listAllOrderBy(String order) throws Exception {
		return session.selectList(namespace+".listAllOrderBy", order);
	}

	@Override
	public MarketVO getone(Integer idno) throws Exception {
		return session.selectOne(namespace+".getone", idno);
	}

	@Override
	public void delete(Integer idno) throws Exception {
		session.delete(namespace+".delete", idno);
	}

}
