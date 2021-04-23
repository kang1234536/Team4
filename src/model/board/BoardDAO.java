package model.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBUtil;

public class BoardDAO {

	public int insertBoard(String title, String content) {
		String sql = "insert into board values(BOARD_SEQ.NEXTVAL,?,?,'wodud',' ',sysdate,0)";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			result = st.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
	
	public List<BoardVO> selectList() {
		List<BoardVO> boardlist = new ArrayList<BoardVO>();
		Connection conn = util.DBUtil.getConnection();
		Statement st = null;
		ResultSet rs = null;
		String sql = "select board_id, board_title, user_id, board_date, board_count from board order by board_id desc";
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
				BoardVO board = new BoardVO(rs.getInt("board_id"), rs.getString("board_title"), rs.getString("user_id"), rs.getDate("board_date"), rs.getInt("board_count"));
				boardlist.add(board);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		
		return boardlist;
	}
	
	public BoardVO selectDetail(String board_ID) {
		BoardVO board = new BoardVO();
		Connection conn = util.DBUtil.getConnection();
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "select board_title, user_id, board_date, board_content from board where board_ID=?";
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, board_ID);
			rs = st.executeQuery();
			while(rs.next()) {
			board = new BoardVO(rs.getString("board_title"), rs.getString("board_content"), rs.getString("user_ID"), rs.getDate("board_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		return board;
	}
}
