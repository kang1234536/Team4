package controller.login;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.UserDAO;
import model.user.UserVO;

@WebServlet("/login/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        UserDAO dao = UserDAO.getInstance();
        String userID = request.getParameter("userID");
        String userPW = request.getParameter("userPW");

        UserVO user = dao.selectByUserId(userID);

        // DB에서 아이디, 비밀번호 확인
        int check = dao.loginCheck(userID, userPW);

        RequestDispatcher rd = null;

        if (check == 1)    // 로그인 성공
        {
            HttpSession session = request.getSession();
            System.out.println(session.getId() + " 세션 연결");
            session.setAttribute("userID", userID);
            session.setAttribute("username", user.getUserName());
            response.sendRedirect("../index.jsp");
        } else if (check == -1) // 아이디가 틀림
        {
            request.setAttribute("check", check);
            rd = request.getRequestDispatcher("LoginForm.jsp");
            rd.forward(request, response);
        } else if (check == 0){ // 비밀번호가 틀림
            request.setAttribute("check", check);
            rd = request.getRequestDispatcher("LoginForm.jsp");
            rd.forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	request.setAttribute("message", session.getAttribute("message"));
    	//System.out.println(session.getAttribute("message"));
    	session.setAttribute("message", null);
        RequestDispatcher rd = request.getRequestDispatcher("LoginForm.jsp");
        rd.forward(request, response);
    }
}
