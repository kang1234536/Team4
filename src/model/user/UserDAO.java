package model.user;

import java.sql.*;

import util.DBUtil;

public class UserDAO {
    private static UserDAO instance;

    public UserDAO() {
    }

    public static UserDAO getInstance() {
        if(instance == null) instance = new UserDAO();
        return instance;
    }

    public int DeleteUser(String user) {
		Connection conn =DBUtil.getConnection();
		PreparedStatement st = null;
		int result = 0;
		try {
		StringBuffer sql = new StringBuffer();
		sql.append("delete from users  where user_id=?");
		
		
			st = conn.prepareStatement(sql.toString());
			st.setString(1, user);
			
			
		
			result = st.executeUpdate(); // insert/update/delete는 executeUpdate()를 써야한다.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
    
    
    
    public boolean checkId(String id) {
    	Connection conn =DBUtil.getConnection();
		PreparedStatement st = null;
		ResultSet rs =null;
		boolean check =false;
		try {
		StringBuffer sql = new StringBuffer();
		sql.append("select user_id from users  where user_id=?");
		
		
			st = conn.prepareStatement(sql.toString());
			st.setString(1, id);
			
			
		
			rs = st.executeQuery();
			check=rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return check;
    }
    
    
    
    public int DeleteUser(UserVO user) {
		Connection conn =DBUtil.getConnection();
		PreparedStatement st = null;
		int result = 0;
		try {
		StringBuffer sql = new StringBuffer();
		sql.append("delete from users  where user_id=?");
		
		
			st = conn.prepareStatement(sql.toString());

			st.setString(1, user.getUserID());
			
			
		

			result = st.executeUpdate(); // insert/update/delete는 executeUpdate()를 써야한다.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
	public int UpdateUser(UserVO user) {
		Connection conn =DBUtil.getConnection();
		PreparedStatement st = null;
		int result = 0;
		try {
		StringBuffer sql = new StringBuffer();
		sql.append("update users set user_pw=? , user_name=? where user_id=?");
		
		
			st = conn.prepareStatement(sql.toString());

			st.setString(3, user.getUserID());
			st.setString(1, user.getUserPW());
			st.setString(2, user.getUserName());
			
		

			result = st.executeUpdate(); // insert/update/delete는 executeUpdate()를 써야한다.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
	}
    
    
    
    
    public void insertUser(UserVO user) {
        Connection conn =  DBUtil.getConnection();
        PreparedStatement st = null;

        try {
            conn.setAutoCommit(false);

            StringBuffer sql = new StringBuffer();
            sql.append("insert into USERS values");
            sql.append("(?, ?, ?, 0)");

            st = conn.prepareStatement(sql.toString());
            st.setString(1, user.getUserID());
            st.setString(2, user.getUserPW());
            st.setString(3, user.getUserName());

            st.executeUpdate();

            conn.commit();
        } catch (SQLException sqle) {
            try {
                conn.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            throw new RuntimeException(sqle.getMessage());
        } finally {
            DBUtil.dbClose(null, st, conn);
        }
    }

    public int loginCheck(String userID, String userPW) {
        Connection conn = DBUtil.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String dbPW = "";
        int result = -1;

        try {
            conn.setAutoCommit(false);

            StringBuffer sql = new StringBuffer();
            sql.append("select USER_PW from USERS where USER_ID=?");

            st = conn.prepareStatement(sql.toString());
            st.setString(1, userID);
            rs = st.executeQuery();

            if(rs.next()) {
                dbPW = rs.getString("user_pw");
                if(dbPW.equals(userPW)) result = 1;
                else result = 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(null, st, conn);
        }

        return result;
    }
    public int updateByUseinfo(String userid,String username,String userpw) {
    	Connection conn =DBUtil.getConnection();
		PreparedStatement st = null;
		int result = 0;
		try {
		StringBuffer sql = new StringBuffer();
		sql.append("update users set user_pw=?  where user_name=? and user_id=?");
		
		
			st = conn.prepareStatement(sql.toString());

			st.setString(1, userpw);
			st.setString(2, username);
			st.setString(3, userid);
			
		

			result = st.executeUpdate(); // insert/update/delete는 executeUpdate()를 써야한다.
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.dbClose(null, st, conn);
		}
		return result;
    }
    
    
    
    public UserVO selectByUseinfo(String userid,String username) {
        UserVO user = null;
        Connection conn = DBUtil.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String sql = "select * from USERS where user_ID=? and user_NAME = ?";  //411322202100033
        try {
            st = conn.prepareStatement(sql);
            st.setString(1,userid);
            st.setString(2,username);
            rs = st.executeQuery();
            while(rs.next()) {
                //System.out.println(rs.getString(1));
                user = makeUsers(rs);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(rs, st, conn);
        }

        return user;
    }
    
    
    
    public UserVO selectByUserName(String username) {
        UserVO user = null;
        Connection conn = DBUtil.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String sql = "select * from USERS where user_NAME = ?";  //411322202100033
        try {
            st = conn.prepareStatement(sql);
            st.setString(1,username);
            rs = st.executeQuery();
            while(rs.next()) {
                //System.out.println(rs.getString(1));
                user = makeUsers(rs);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(rs, st, conn);
        }

        return user;
    }
    public UserVO selectByUserId(String userId) {
        UserVO user = null;
        Connection conn = DBUtil.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String sql = "select * from USERS where user_ID = ?";  //411322202100033
        try {
            st = conn.prepareStatement(sql);
            st.setString(1,userId);
            rs = st.executeQuery();
            while(rs.next()) {
                //System.out.println(rs.getString(1));
                user = makeUsers(rs);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(rs, st, conn);
        }

        return user;
    }

    private UserVO makeUsers(ResultSet rs) throws SQLException {
        UserVO user = new UserVO();
        user.setUserDiv(rs.getInt("user_div"));
        user.setUserID(rs.getString("user_id"));
        user.setUserName(rs.getString("user_name"));
        user.setUserPW(rs.getString("user_pw"));

        return user;
    }
 

}
