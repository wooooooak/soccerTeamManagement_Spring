package com.datastr.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.datastr.VO.StaffVO;

@Repository
public class StaffDAOImpl implements StaffDAO {
	private final static String namespace = "com.datastr.mappers.staffMapper";

	@Inject
	private SqlSession session;
	
	
	@Override
	public void regist(StaffVO staffVO) throws Exception {
		session.insert(namespace+".regist", staffVO);
		
	}


	@Override
	public List<StaffVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}


	@Override
	public void release(Integer pno) throws Exception {
		session.delete(namespace+".release", pno);
	}


	@Override
	public List<StaffVO> listAllOrderBy(String order) throws Exception {
		return session.selectList(namespace+".listAllOrderBy", order);
	}


	@Override
	public StaffVO getone(Integer idno) throws Exception {
		return session.selectOne(namespace+".getone", idno);
	}



}
