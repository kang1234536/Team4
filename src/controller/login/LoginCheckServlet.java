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

@WebServlet("/login/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO dao = UserDAO.getInstance();
        String userID = request.getParameter("userID");
        String userPW = sha256(request.getParameter("userPW"));

        UserVO user = dao.selectByUserId(userID);

        int check = dao.loginCheck(userID, userPW);

        RequestDispatcher rd = null;

        if (check == 1)
        {
            HttpSession session = request.getSession();
            System.out.println(session.getId() + " 연결됨");
            session.setAttribute("userID", userID);
            session.setAttribute("userName", user.getUserName());
            session.setAttribute("userPW", user.getUserPW());
            session.setAttribute("userDiv", user.getUserDiv());
            response.sendRedirect("../index");
        } else if (check == -1)
        {
            request.setAttribute("check", check);
            rd = request.getRequestDispatcher("LoginForm.jsp");
            rd.forward(request, response);
        } else if (check == 0){ // ��й�ȣ�� Ʋ��
            request.setAttribute("check", check);
            rd = request.getRequestDispatcher("LoginForm.jsp");
            rd.forward(request, response);
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	request.setAttribute("message", session.getAttribute("message"));
    	session.setAttribute("message", null);
        RequestDispatcher rd = request.getRequestDispatcher("LoginForm.jsp");
        rd.forward(request, response);
    }
}
