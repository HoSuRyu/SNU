package study.spring.seoulspring.model;

import lombok.Data;

@Data
public class Reply {

	private int post_num;
	private int reply_num;
	private String reply_txt;
	private String reply_name;
}
