package controller.oauth;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.*;
import org.json.simple.JSONObject;

import model.user.OauthDAO;
import model.user.UserVO;


@WebServlet("/NaverCallbackServlet")
public class NaverCallbackServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = "S6NizWUvfrEyNSDHC2IS";//애플리케이션 클라이언트 아이디값";
        String redirectURI = URLEncoder.encode("http://bowmeow.ga/Team4_war/NaverCallbackServlet", "UTF-8");
        SecureRandom random = new SecureRandom();
        String state = new BigInteger(130, random).toString();
        String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
        apiURL += "&client_id=" + clientId;
        apiURL += "&redirect_uri=" + redirectURI;
        apiURL += "&state=" + state;

        HttpSession session = request.getSession();
        session.setAttribute("state", state);

        response.sendRedirect(apiURL);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = "S6NizWUvfrEyNSDHC2IS";
        String clientSecret = "34F7pTX_AP";
        String code = request.getParameter("code");
        String state = request.getParameter("state");
        String redirectURI = URLEncoder.encode("http://bowmeow.ga/Team4_war/NaverCallbackServlet","UTF-8");

        StringBuffer apiURL = new StringBuffer();
        apiURL.append("https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&");
        apiURL.append("client_id=" + clientId);
        apiURL.append("&client_secret=" + clientSecret);
        apiURL.append("&redirect_uri=" + redirectURI);
        apiURL.append("&code=" + code);
        apiURL.append("&state=" + state);
        String access_token = "";
        String refresh_token = ""; //나중에 이용합시다

        try {
            URL url = new URL(apiURL.toString());
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            int responseCode = con.getResponseCode();
            BufferedReader br;
            System.out.print("responseCode="+responseCode);
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
            if(responseCode==200) {
                System.out.println("\n토큰정보: " + res.toString());
                JSONParser parsing = new JSONParser();
                Object obj = parsing.parse(res.toString());
                JSONObject jsonObj = (JSONObject)obj;

                access_token = (String)jsonObj.get("access_token");
                refresh_token = (String)jsonObj.get("refresh_token");

                //상태 토큰 검증
                if(access_token != null) {
                    try {
                        // 사용자 프로필 정보 조회
                        OauthDAO dao = OauthDAO.getInstance();
                        UserVO user = dao.naverUserProfileSelect(access_token);
                        if(user != null) {
                            HttpSession session = request.getSession();
                            System.out.println(session.getId() + " 연결됨");
                            session.setAttribute("userID", user.getUserID());
                            session.setAttribute("username", user.getUserName());

                            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                            rd.forward(request, response);
                        } else {
                            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                            rd.forward(request, response);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
