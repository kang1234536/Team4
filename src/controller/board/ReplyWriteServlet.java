package controller.board;

import java.io.IOException;
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
		
		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");
		System.out.println(userID);
		int boardID = Integer.parseInt(request.getParameter("boardID"));
		System.out.println(boardID);
		String reply = request.getParameter("reply");
		System.out.println(reply);
		dao.insertBoard(userID, boardID, reply);
		
		response.sendRedirect("boardlist");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
