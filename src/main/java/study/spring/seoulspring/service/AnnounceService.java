package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Announce;
@Service
public interface AnnounceService {
	public abstract int insertAnnounce(Announce input) throws Exception;
	public abstract int insertImg(List<Announce> input ) throws Exception;
	public abstract List<Announce> selectList(Announce input) throws Exception; 
	public abstract List<Announce> selectImgList(Announce input) throws Exception; 
	
	
	public abstract Announce selectOne() throws Exception;
	public abstract Announce selectDetail(Announce input) throws Exception;
	
	public abstract int updateAnnounce(Announce input) throws Exception;
	public abstract int DeleteAnnounce(Announce input) throws Exception;

	
	// 페이징에 필요한 전체 카운트 service
	public abstract int getAnnounceCount() throws Exception;
}
