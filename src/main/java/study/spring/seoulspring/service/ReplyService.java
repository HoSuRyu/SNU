package study.spring.seoulspring.service;

import org.springframework.stereotype.Service;

import study.spring.seoulspring.model.Community;
import study.spring.seoulspring.model.Reply;
@Service
public interface ReplyService {

	public abstract Reply selectOne(Reply input) throws Exception;
	public abstract int insertPost(Reply input) throws Exception;
	
}
