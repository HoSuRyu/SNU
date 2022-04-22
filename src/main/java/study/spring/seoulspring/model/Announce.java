package study.spring.seoulspring.model;

import lombok.Data;

@Data
public class Announce {
	private int announceno;
	private String title;
	private String text;
	private String img;
	private int view;
	private String postdate;
	
	private static int offset;
	private static int listCount;
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		Announce.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		Announce.listCount = listCount;
	}

}
