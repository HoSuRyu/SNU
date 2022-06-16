package study.spring.seoulspring.service;
import java.util.List;

import org.springframework.stereotype.Service;


import study.spring.seoulspring.model.Reservation;
@Service
public interface ReservationService {
	public abstract int insertTime(Reservation input) throws Exception;
	public abstract List<Reservation> selectList(Reservation input) throws Exception; 
	public abstract int DeleteReservation(Reservation input) throws Exception;
	public abstract double TimeSum(Reservation input) throws Exception;
}
