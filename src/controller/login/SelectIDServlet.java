package controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.UserDAO;
import model.user.UserVO;

/**
 * Servlet implementation class SelectIDServlet
 */
@WebServlet("/SelectIDServlet")
public class SelectIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public SelectIDServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
        UserDAO dao = new UserDAO();
        UserVO u= dao.selectByUserName(name);
        //보내주는것
        PrintWriter out = response.getWriter();
        if(u==null) 
        	out.print("false");
        else
            out.append(u.getUserID());
      
	}
}
