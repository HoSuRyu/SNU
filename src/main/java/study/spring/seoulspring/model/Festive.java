package study.spring.seoulspring.model;

import lombok.Data;

@Data
public class Festive {
	private int festiveno;
	private String title;
	private String text;
	private String img;
	private String end_date;
	
	private static int offset;
	private static int listCount;
	public static int getOffset() {
		return offset;
	}
	public static void setOffset(int offset) {
		Festive.offset = offset;
	}
	public static int getListCount() {
		return listCount;
	}
	public static void setListCount(int listCount) {
		Festive.listCount = listCount;
	}

}
