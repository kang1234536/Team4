package controller.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user.UserDAO;

import static util.Encryption.sha256;


/**
 * Servlet implementation class SelectIDServlet
 */
@WebServlet("/UpdatePwServlet")
public class UpdatePwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdatePwServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userid");
		String name = request.getParameter("username");
		String pw = sha256(request.getParameter("userpw1"));
        
		
		UserDAO dao = new UserDAO();
        int a=dao.updateByUseinfo(id, name, pw);
		
       
       
        
	
      
	}
}
