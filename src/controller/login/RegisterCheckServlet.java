package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.UserDAO;
import model.user.UserVO;

@WebServlet("/RegisterCheckServlet")
public class RegisterCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	
    	UserVO user = new UserVO();
        UserDAO dao = new UserDAO();

        user.setUserID(request.getParameter("userID"));
        user.setUserPW(request.getParameter("userPW"));
        user.setUserName(request.getParameter("userName"));

        dao.insertUser(user);

        response.sendRedirect("../login/LoginForm.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
