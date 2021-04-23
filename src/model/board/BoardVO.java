package model.board;

import java.sql.Date;

public class BoardVO {
	private int board_ID;
	private String board_title;
	private String board_content;
	private String user_ID;
	private String board_answer;
	private Date board_date;
	private int board_count;
	
	public BoardVO() {
		super();
	}

	public BoardVO(String board_title, String board_content, String user_ID, Date board_date) {
		super();
		this.board_title = board_title;
		this.board_content = board_content;
		this.user_ID = user_ID;
		this.board_date = board_date;
	}

	public BoardVO(int board_ID, String board_title, String user_ID, Date board_date, int board_count) {
		super();
		this.board_ID = board_ID;
		this.board_title = board_title;
		this.user_ID = user_ID;
		this.board_date = board_date;
		this.board_count = board_count;
	}

	public BoardVO(int board_ID, String board_title, String board_content, String user_ID, String board_answer,
			Date board_date, int board_count) {
		super();
		this.board_ID = board_ID;
		this.board_title = board_title;
		this.board_content = board_content;
		this.user_ID = user_ID;
		this.board_answer = board_answer;
		this.board_date = board_date;
		this.board_count = board_count;
	}

	public int getBoard_ID() {
		return board_ID;
	}


	public void setBoard_ID(int board_ID) {
		this.board_ID = board_ID;
	}


	public String getBoard_title() {
		return board_title;
	}


	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}


	public String getBoard_content() {
		return board_content;
	}


	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}


	public String getUser_ID() {
		return user_ID;
	}


	public void setUser_ID(String user_ID) {
		this.user_ID = user_ID;
	}


	public String getBoard_answer() {
		return board_answer;
	}


	public void setBoard_answer(String board_answer) {
		this.board_answer = board_answer;
	}


	public Date getBoard_date() {
		return board_date;
	}


	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}


	public int getBoard_count() {
		return board_count;
	}

	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("BoardVO [board_ID=").append(board_ID).append(", board_title=").append(board_title)
				.append(", board_content=").append(board_content).append(", user_ID=").append(user_ID)
				.append(", board_answer=").append(board_answer).append(", board_date=").append(board_date)
				.append(", board_count=").append(board_count).append("]");
		return builder.toString();
	}
	
	
}
