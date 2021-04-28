package model.user;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import util.DBUtil;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OauthDAO {
    private static OauthDAO instance;

    public OauthDAO() {
    }

    public static OauthDAO getInstance() {
        if(instance == null) instance = new OauthDAO();
        return instance;
    }

    public UserVO naverUserProfileSelect(String access_token) {
        try {
            String apiurl = "https://openapi.naver.com/v1/nid/me";
            URL url = new URL(apiurl);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            String header = "Bearer " + access_token;
            con.setRequestProperty("Authorization", header);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer res = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                res.append(inputLine);
            }
            br.close();

            JSONParser parsing = new JSONParser();
            Object obj = parsing.parse(res.toString());
            JSONObject jsonObj = (JSONObject)obj;
            JSONObject resObj = (JSONObject)jsonObj.get("response");

            //왼쪽 변수 이름은 원하는 대로 정하면 된다.
            String userPW = (String)resObj.get("id"); //이게 pw임
            String userID = (String)resObj.get("email");
            String userName = (String)resObj.get("name");

            UserVO user = new UserVO(userID, userPW, userName);
            boolean check = oauthLoginCheck(userID, userPW);
            if(!check) { // DB의 사용자가 없다면 DB에 추가
                UserDAO dao = UserDAO.getInstance();
                dao.insertUser(user);
                return user;
            } else {
                return user;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private boolean oauthLoginCheck(String userID, String userPW) {
        Connection conn = DBUtil.getConnection();
        PreparedStatement st = null;
        ResultSet rs = null;
        String dbPW = "";
        boolean result = false;

        try {
            conn.setAutoCommit(false);

            StringBuffer sql = new StringBuffer();
            sql.append("select USER_PW from USERS where USER_ID=?");

            st = conn.prepareStatement(sql.toString());
            st.setString(1, userID);
            rs = st.executeQuery();

            if(rs.next()) {
                dbPW = rs.getString("user_pw");
                if(dbPW.equals(userPW)) result = true;
                else result = false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DBUtil.dbClose(null, st, conn);
        }

        return result;
    }

}
