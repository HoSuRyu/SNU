package study.spring.seoulspring.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Reservation;
import study.spring.seoulspring.service.ReservationService;
@Service
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public int insertTime(Reservation input) throws Exception {
		int result = 0;
		result = sqlSession.insert("ReservationMapper.insertReservation", input);
		return result;
	}

	@Override
	public List<Reservation> selectList(Reservation input) throws Exception {
		List<Reservation> result = null;
		result =sqlSession.selectList("ReservationMapper.selectList", input);
		return result;
	}

	@Override
	public int DeleteReservation(Reservation input) throws Exception {
		int result = 0;
		result = sqlSession.insert("ReservationMapper.deleteReservation", input);
		return result;
	}

	@Override
	public double TimeSum(Reservation input) throws Exception {
		double result = 0;
		result = sqlSession.selectOne("ReservationMapper.TimeSum", input);
		return result;
	}

}
