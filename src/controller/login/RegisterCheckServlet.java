package controller.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.UserDAO;
import model.user.UserVO;
import static util.Encryption.sha256;

@WebServlet("/RegisterCheckServlet")
public class RegisterCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		 request.setCharacterEncoding("UTF-8");

    	UserVO user = new UserVO();
        UserDAO dao = new UserDAO();

        user.setUserID(request.getParameter("userID"));
        user.setUserPW(sha256(request.getParameter("userPW")));
        user.setUserName(request.getParameter("userName"));

        dao.insertUser(user);

        response.sendRedirect("login/LoginForm.jsp");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	request.setAttribute("message", session.getAttribute("message"));
    	//System.out.println(session.getAttribute("message"));
    	session.setAttribute("message", null);
        RequestDispatcher rd = request.getRequestDispatcher("login/RegisterForm.jsp");
        rd.forward(request, response);
    }

}
