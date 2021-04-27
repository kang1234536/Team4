package myinform;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.UserDAO;
import model.user.UserVO;



/**
 * Servlet implementation class MyInformServlet
 */
@WebServlet("/myinform/myInform")
public class MyInformServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session = request.getSession(true);
		Object obj = session.getAttribute("userID");	
		Object obj2 = session.getAttribute("userPW");	
		Object obj3 = session.getAttribute("userName");	
		if(obj==null) {
			response.sendRedirect("../login/LoginForm.jsp");
			return;
		}
	
		 request.setAttribute("userName", obj3);
		 RequestDispatcher rd =request.getRequestDispatcher("myinform.jsp");
		 rd.forward(request,response);
		
		
	
	
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
