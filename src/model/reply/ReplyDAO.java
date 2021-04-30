package model.reply;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class ReplyDAO {

	public int deleteReply(int replyID) {
		String sql = "delete from reply where reply_id = ?";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setInt(1, replyID);
			result = st.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
	
	public List<ReplyVO> selectList(int board_id) {
		List<ReplyVO> replylist = new ArrayList<ReplyVO>();
		Connection conn = util.DBUtil.getConnection();
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "select reply_id, user_id, board_id, reply, to_char(reply_date+9/24, 'yyyy.mm.dd. HH:MI') from reply where board_id=? order by reply_id asc";
		try {
			st = conn.prepareStatement(sql);
			st.setInt(1, board_id);
			rs = st.executeQuery();
			while(rs.next()) {
				ReplyVO reply = new ReplyVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
				//System.out.println(reply.getReply_date());
				replylist.add(reply);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		
		return replylist;
	}
	
	public int insertReply(String userID, int boardID, String reply) {
		String sql = "insert into reply values(seq_reply.nextval, ?, ?, ?, sysdate)";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, userID);
			st.setInt(2, boardID);
			st.setString(3, reply);
			result = st.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
}
