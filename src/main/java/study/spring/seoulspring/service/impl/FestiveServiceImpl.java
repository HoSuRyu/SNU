package study.spring.seoulspring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Festive;
import study.spring.seoulspring.service.FestiveService;
@Service
public class FestiveServiceImpl implements FestiveService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertFestive(Festive input) throws Exception {
		int result =0; 
		result =sqlSession.insert("FestiveMapper.insertPost", input);
		return result;
	}

	@Override
	public List<Festive> selectList(Festive input) throws Exception {
		List<Festive> result = null;
		result =sqlSession.selectList("FestiveMapper.selectList", input);
		// TODO Auto-generated method stub
		return result;
	}

	@Override
	public Festive selectOne() throws Exception {
		Festive result = null;
		result = sqlSession.selectOne("FestiveMapper.selectOne", null);
		return result;
	}

	@Override
	public int updateFestive(Festive input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int DeleteFestive(Festive input) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertImg(List<Festive> input) throws Exception {
		int result =0;
		result = sqlSession.insert("FestiveMapper.insertImg", input);
		return 0;
	}

	@Override
	public Festive selectDetail(Festive input) throws Exception {
		Festive result = null;
		result = sqlSession.selectOne("FestiveMapper.selectDetail", input);
		return result;
	}

	@Override
	public List<Festive> selectImgList(Festive input) throws Exception {
		List<Festive> result = null;
		result =sqlSession.selectList("FestiveMapper.selectimgList", input);
		return result;
	}

	// 페이징에 필요한 전체 카운트 service
	@Override
	public int getFestiveCount() throws Exception {
		int result = 0;
		result = sqlSession.selectOne("FestiveMapper.selectCount", null);
		return result;
	}

}
