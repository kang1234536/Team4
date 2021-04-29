package model.reply;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class ReplyVO {
	private int reply_id;
	private String user_id;
	private int board_id;
	private String reply;
	private String reply_date;
	
	public ReplyVO() {
		super();
	}

	public ReplyVO(int reply_id, String user_id, int board_id, String reply, String reply_date) {
		super();
		this.reply_id = reply_id;
		this.user_id = user_id;
		this.board_id = board_id;
		this.reply = reply;
		this.reply_date = reply_date;
	}
	
	public int getReply_id() {
		return reply_id;
	}


	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public int getBoard_id() {
		return board_id;
	}


	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}


	public String getReply() {
		return reply;
	}


	public void setReply(String reply) {
		this.reply = reply;
	}


	public String getReply_date() {
		return reply_date;
	}


	public void setReply_date(String reply_date) {
		
		this.reply_date = reply_date;
	}


	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("ReplyVO [reply_id=").append(reply_id).append(", user_id=").append(user_id).append(", board_id=")
				.append(board_id).append(", reply=").append(reply).append(", reply_date=").append(reply_date)
				.append("]");
		return builder.toString();
	}
	
	
}
