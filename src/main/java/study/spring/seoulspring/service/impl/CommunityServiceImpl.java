package study.spring.seoulspring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Announce;
import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.service.CommunityService;

@Service
public class CommunityServiceImpl implements CommunityService {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertPost(Community input) throws Exception {

		int result = 0;
		result = sqlSession.insert("CommunityMapper.insertPost", input);
		return result;
	}

	@Override
	public List<Community> selectList() throws Exception {
		List<Community> result = null;
		result = sqlSession.selectList("CommunityMapper.selectList", null);
		return result;
	}

	@Override
	public Community selectOne(Community input) throws Exception {
		Community result = null;
		result = sqlSession.selectOne("CommunityMapper.selectOne", input);
		return result;
	}

	@Override
	public int updatePostView(Community input) throws Exception {
		int result =0;
		result = sqlSession.update("CommunityMapper.updateViewCount", input);
		return 0;
	}

	@Override
	public int DeletePost(Community input) throws Exception {
		int result =0;
		result = sqlSession.delete("CommunityMapper.deletePost", input);
		return 0;
	}
	@Override
	public Community selectone() throws Exception{
		Community result = null;
		result = sqlSession.selectOne("CommunityMapper.selectone", null);
		return result;
	}
	
	@Override
	public int getCommunityCount() throws Exception {
		int result = 0;
		result = sqlSession.selectOne("CommunityMapper.selectCount", null);
		return result;
	}
	@Override
	public List<Community> selectlist(Community input) throws Exception{
		List<Community> result = null;
		result =sqlSession.selectList("CommunityMapper.selectlist", input);
		return result;
	}

}
