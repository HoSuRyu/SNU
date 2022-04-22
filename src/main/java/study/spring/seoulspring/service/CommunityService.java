package study.spring.seoulspring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Announce;
import study.spring.seoulspring.model.Community;
@Service
public interface CommunityService {
	public abstract int insertPost(Community input) throws Exception;
	public abstract List<Community> selectList() throws Exception; 
	public abstract Community selectOne(Community input) throws Exception;
	public abstract int updatePostView(Community input) throws Exception;
	public abstract int DeletePost(Community input) throws Exception;
	public abstract Community selectone() throws Exception;
	public abstract int getCommunityCount() throws Exception ;
	public abstract List<Community> selectlist(Community input) throws Exception; 

}
