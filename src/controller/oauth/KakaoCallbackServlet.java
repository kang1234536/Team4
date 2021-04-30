package controller.oauth;

import model.user.OauthDAO;
import model.user.UserVO;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;

@WebServlet("/KakaoCallbackServlet")
public class KakaoCallbackServlet extends HttpServlet {
    private final static String TAG = "KakaoController : ";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String clientId = "cbcb98ebb8713ea77adcfaf9b1992493";//애플리케이션 클라이언트 아이디값";
        String redirectURI = URLEncoder.encode("http://f1c04.xyz/Team4_war/KakaoCallbackServlet", "UTF-8");
        SecureRandom random = new SecureRandom();
        String state = new BigInteger(130, random).toString();
        String apiURL = "https://kauth.kakao.com/oauth/authorize?";
        apiURL += "&client_id=" + clientId;
        apiURL += "&redirect_uri=" + redirectURI;
        apiURL += "&state=" + state;
        apiURL += "&response_type=code";
        apiURL += "&scope=account_email";

        HttpSession session = request.getSession();
        session.setAttribute("state", state);

        response.sendRedirect(apiURL);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //요청: https://kauth.kakao.com/oauth/authorize?client_id=cbcb98ebb8713ea77adcfaf9b1992493&redirect_uri=http://127.0.0.1:9090/KakaoCallbackServlet&response_type=code
        //응답: http://127.0.0.1:9090/KakaoCallbackServlet?code=GBsFDNBQEa5iwPvwstpHlzwwJ9Gm1mLOB9doRUHsyPvOjyg3F_VFHJJSE0qloNkjIq5BrQo9cpcAAAF5HB1Khw&state=48449966299861955864676428422114753279
        String clientId = "cbcb98ebb8713ea77adcfaf9b1992493";
        String code = request.getParameter("code");
        //String state = request.getParameter("state");
        String redirectURI = URLEncoder.encode("http://f1c04.xyz/Team4_war/KakaoCallbackServlet","UTF-8");

        String access_token = "";
        String refresh_token = ""; //나중에 이용합시다

        try {
            URL url = new URL("https://kauth.kakao.com/oauth/token");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //    POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            conn.setRequestMethod("POST");
            conn.setDoOutput(true);

            //    POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
            StringBuilder sb = new StringBuilder();
            sb.append("grant_type=authorization_code");
            sb.append("&client_id=" + clientId);
            sb.append("&redirect_uri=" + redirectURI);
            sb.append("&code=" + code);
            bw.write(sb.toString());
            bw.flush();

            //    결과 코드가 200이라면 성공
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            //    요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            StringBuilder result = new StringBuilder();

            while ((line = br.readLine()) != null) {
                result.append(line);
            }
            System.out.println("response body : " + result);

            //    Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
            JSONParser parsing = new JSONParser();
            Object obj = parsing.parse(result.toString());
            JSONObject jsonObj = (JSONObject)obj;

            access_token = (String)jsonObj.get("access_token");
            refresh_token = (String)jsonObj.get("refresh_token");

            System.out.println("access_token : " + access_token);
            System.out.println("refresh_token : " + refresh_token);

            br.close();
            bw.close();
        } catch (IOException | ParseException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        OauthDAO dao = OauthDAO.getInstance();
        UserVO user = dao.kakaoUserProfileSelect(access_token);
        if(user != null) {
            HttpSession session = request.getSession();
            System.out.println(session.getId() + " 연결됨");
            session.setAttribute("userID", user.getUserID());
            session.setAttribute("userName", user.getUserName());
            session.setAttribute("userPW", user.getUserPW());
            session.setAttribute("userDiv", user.getUserDiv());

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
    }
}
