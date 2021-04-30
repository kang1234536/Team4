package util;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.*;

public class DBUtil {
	public static Connection getConnection() {
		Connection conn = null;
		String driverName = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@bowmeow.c7xrn7apjrxn.ap-northeast-2.rds.amazonaws.com:1521:KOSTA";
		String userid = "kosta", password = "kosta2021";
		
		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, userid, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	
    //1.DB ?���?
//    public static Connection getConnection() {
//        Connection conn = null;
//        Context initContext = null;
//        try {
//            initContext = new InitialContext();
//            Context envContext  = (Context)initContext.lookup("java:/comp/env");
//            DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
//            conn = ds.getConnection();
//        } catch (NamingException | SQLException e) {
//            e.printStackTrace();
//        }
//        return conn;
//    }

    //2.?��?�� 반납
    public static void dbClose(ResultSet rs, Statement st, Connection conn) {
        try {
            if (rs != null) rs.close();
            if (st != null) st.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
