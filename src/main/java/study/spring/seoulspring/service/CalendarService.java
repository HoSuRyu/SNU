package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.TimeTable;

@Service
public interface CalendarService {
	
	public abstract List<TimeTable> selectList(TimeTable input) throws Exception; 

}
