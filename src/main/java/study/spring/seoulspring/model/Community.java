package study.spring.seoulspring.model;

import lombok.Data;

@Data
public class Community {
	private int postno;
	private String postcategory;
	private String posttype;
	private String posttitle;
	private String postcontent;
	private String postdate;
	private String postpublic;
	private int postview;
	private int memberno;

}
