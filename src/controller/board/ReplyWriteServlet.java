package controller.board;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.reply.ReplyDAO;

@WebServlet("/board/replyWrite")
public class ReplyWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ReplyDAO dao = new ReplyDAO();
		String uid = request.getParameter("uid");
		String bid = request.getParameter("bid");
		
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		//System.out.println(userID);
		int boardID = Integer.parseInt(bid);
		//System.out.println(boardID);
		String reply = request.getParameter("reply");
		//System.out.println(reply);
		dao.insertReply(userID, boardID, reply);
		
		request.setAttribute("userID", uid);
		request.setAttribute("board_ID", bid);
	}

}
