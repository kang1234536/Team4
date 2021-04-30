package controller.board;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.reply.ReplyDAO;


@WebServlet("/board/replyDelete")
public class ReplyDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReplyDAO dao = new ReplyDAO();
		
		String replyID = request.getParameter("replyid");
		//System.out.println(replyID);
		dao.deleteReply(Integer.parseInt(replyID));
	}

}
