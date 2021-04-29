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

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
    	UserVO user = new UserVO();
        UserDAO dao = new UserDAO();

        user.setUserID(request.getParameter("userID"));
        user.setUserPW(request.getParameter("userPW"));
        user.setUserName(request.getParameter("userName"));
        
        dao.UpdateUser(user);
        HttpSession session = request.getSession(true);
		session.invalidate();
			
		
		
        RequestDispatcher rd =request.getRequestDispatcher("index.jsp");
		rd.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    }
}
