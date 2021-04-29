package controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.board.*;
import model.reply.ReplyDAO;
import model.reply.ReplyVO;



@WebServlet("/board/boardDetail")
public class BoardDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardid = request.getParameter("board_ID");
		if(boardid == null) throw new ServletException("board_id 없음");
		
		BoardDAO dao = new BoardDAO();
		BoardVO board = dao.selectDetail(boardid);
		
		ReplyDAO replyDAO = new ReplyDAO();
		List<ReplyVO> replyList = replyDAO.selectList(Integer.parseInt(boardid));
		
		int boardCount = board.getBoard_count();
		Cookie[] cookieFromRequest = request.getCookies();
		
		String cookieValue = null;
		cookieValue = cookieFromRequest[0].getValue();
		System.out.println(cookieValue);
		HttpSession session = request.getSession();
		if(session.getAttribute(boardid+":cookie")==null) {
			session.setAttribute(boardid+":cookie", boardid+":"+cookieValue);
		}else {
			session.setAttribute(boardid+":cookie ex", session.getAttribute(boardid+":cookie"));
			if(!session.getAttribute(boardid+":cookie").equals(boardid+":"+cookieValue)) {
				session.setAttribute(boardid+":cookie", boardid+":"+cookieValue);
			}
		}
		if(!session.getAttribute(boardid+":cookie").equals(session.getAttribute(boardid+":cookie ex"))) {
			dao.updateBoardCount(boardCount, boardid);
		}
			
		
		request.setAttribute("board_detail", board);
		request.setAttribute("reply_list", replyList);
		
		String userID = (String) session.getAttribute("userID");
		String boardWriter = dao.getUserID(boardid);
		request.setAttribute("userID", userID);
		request.setAttribute("boardWriter", boardWriter);
		request.setAttribute("boardID", boardid);
		RequestDispatcher rd = request.getRequestDispatcher("boardDetail.jsp");
		rd.forward(request, response);
	}

}
