package study.spring.seoulspring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.TimeTable;
import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.model.Council;
import study.spring.seoulspring.service.CalendarService;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<TimeTable> selectList(TimeTable input) throws Exception{
			List<TimeTable> result = null;
			result = sqlSession.selectList("CalendarMapper.selectlist", input);
			return result;
		}
	}

