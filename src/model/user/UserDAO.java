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

}
