package study.spring.seoulspring.service.impl;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Reply;
import study.spring.seoulspring.service.ReplyService;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public Reply selectOne(Reply input) throws Exception{
		Reply result = null;
		result = sqlSession.selectOne("ReplyMapper.selectOne", input);
		return result;
		
	}
}
