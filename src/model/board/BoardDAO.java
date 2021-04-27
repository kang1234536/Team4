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
	
	public List<BoardVO> getList(int start, int end) {
		List<BoardVO> boardlist = new ArrayList<BoardVO>();
		Connection conn = util.DBUtil.getConnection();
		PreparedStatement st = null;
		ResultSet rs = null;
		String sql = "select * from(select rownum rn, board_id, board_title, user_id, board_date, board_count from(select * from board order by board_id desc)) where rn between ? and ?";
		try {
			st = conn.prepareStatement(sql);
			st.setInt(1, start);
			st.setInt(2, end);
			rs = st.executeQuery();
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
	
	public int getCount(){
		int count = 0;
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		String sql = "select count(*) from board";
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		return count; // 총 레코드 수 리턴
	}
	
	public int deleteBoard(String boardID) {
		String sql = "delete from board where board_ID = ?";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, boardID);
			result = st.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
	
	public int updateBoard(String title, String content, String boardID) {
		String sql = "update board set board_title=?, board_content=? where board_id = ?";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, boardID);
			result = st.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
	
	public int insertBoard(String title, String content, String userID) {
		String sql = "insert into board values(BOARD_SEQ.NEXTVAL,?,?,?,' ',sysdate,0)";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, content);
			st.setString(3, userID);
			result = st.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
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
		String sql = "select board_title, user_id, board_date, board_content, board_count from board where board_ID=?";
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, board_ID);
			rs = st.executeQuery();
			while(rs.next()) {
				board.setBoard_content(rs.getString("board_content"));
				board.setBoard_title(rs.getString("board_title"));
				board.setUser_ID(rs.getString("user_id"));
				board.setBoard_date(rs.getDate("board_date"));
				board.setBoard_count(rs.getInt("board_count"));
			//board = new BoardVO(rs.getString("board_title"), rs.getString("board_content"), rs.getString("user_ID"), rs.getDate("board_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(rs, st, conn);
		}
		return board;
	}

	public int updateBoardCount(int boardCount, String boardid) {
		String sql = "update board set board_count=? where board_id = ?";
		Connection conn;
		PreparedStatement st = null;
		int result = 0;

		conn = DBUtil.getConnection();
		try {
			st = conn.prepareStatement(sql);
			st.setInt(1, boardCount+1);
			st.setString(2, boardid);
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
