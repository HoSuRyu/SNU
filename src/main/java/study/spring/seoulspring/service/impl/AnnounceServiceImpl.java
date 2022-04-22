package study.spring.seoulspring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Announce;

import study.spring.seoulspring.service.AnnounceService;
@Service
public class AnnounceServiceImpl implements AnnounceService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertAnnounce(Announce input) throws Exception {
		int result =0; 
		result =sqlSession.insert("AnnounceMapper.insertPost", input);
		return result;
	}

	@Override
	public List<Announce> selectList(Announce input) throws Exception {
		List<Announce> result = null;
		result =sqlSession.selectList("AnnounceMapper.selectList", input);
		// TODO Auto-generated method stub
		return result;
	}

	@Override
	public Announce selectOne() throws Exception {
		Announce result = null;
		result = sqlSession.selectOne("AnnounceMapper.selectOne", null);
		return result;
	}

	@Override
	public int updateAnnounce(Announce input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int DeleteAnnounce(Announce input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertImg(List<Announce> input) throws Exception {
		int result =0;
		result = sqlSession.insert("AnnounceMapper.insertImg", input);
		return 0;
	}

	@Override
	public Announce selectDetail(Announce input) throws Exception {
		Announce result = null;
		result = sqlSession.selectOne("AnnounceMapper.selectDetail", input);
		int a =0;
		a= sqlSession.update("AnnounceMapper.updateViewCount", input);
		return result;
	}

	@Override
	public List<Announce> selectImgList(Announce input) throws Exception {
		List<Announce> result = null;
		result =sqlSession.selectList("AnnounceMapper.selectimgList", input);
		return result;
	}

	// 페이징에 필요한 전체 카운트 service
	@Override
	public int getAnnounceCount() throws Exception {
		int result = 0;
		result = sqlSession.selectOne("AnnounceMapper.selectCount", null);
		return result;
	}

}
