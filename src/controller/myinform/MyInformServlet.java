package controller.myinform;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MyInformServlet
 */
@WebServlet("/myinform/myinformation")
public class MyInformServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		Object obj = session.getAttribute("userID");
		Object obj2 = session.getAttribute("userPW");
		Object obj3 = session.getAttribute("userName");
		Object obj4 = session.getAttribute("userDiv");
		
		RequestDispatcher rd = null;
		if (obj == null) {

			response.sendRedirect("../login/LoginCheckServlet");

			return;
		} else {
			request.setAttribute("userName", obj3);
			rd = request.getRequestDispatcher("myinform.jsp");
			rd.forward(request, response);
			return;
		}

	}

}
