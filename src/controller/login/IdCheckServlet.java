package controller.login;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.user.UserDAO;
/**
 * Servlet implementation class IdCheckServlet
 */
@WebServlet("/login/idCheck")
public class IdCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userid");
		System.out.println(id);
		UserDAO udao = new UserDAO();
		boolean b = udao.checkId(id);
		response.getWriter().append(String.valueOf(b));
	}
}