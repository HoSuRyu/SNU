package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;


import study.spring.seoulspring.model.Festive;
@Service
public interface FestiveService {
	public abstract int insertFestive(Festive input) throws Exception;
	public abstract int insertImg(List<Festive> input ) throws Exception;
	public abstract List<Festive> selectList(Festive input) throws Exception; 
	public abstract List<Festive> selectImgList(Festive input) throws Exception; 
	
	
	public abstract Festive selectOne() throws Exception;
	public abstract Festive selectDetail(Festive input) throws Exception;
	
	public abstract int updateFestive(Festive input) throws Exception;
	public abstract int DeleteFestive(Festive input) throws Exception;

	
	// 페이징에 필요한 전체 카운트 service
	public abstract int getFestiveCount() throws Exception;
}
