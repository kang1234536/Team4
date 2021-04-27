package controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.board.BoardDAO;
import model.board.BoardVO;
 
@WebServlet("/board/boardUpdate")
public class BoardUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardid = request.getParameter("board_ID");
		BoardDAO dao = new BoardDAO();
		BoardVO board = dao.selectDetail(boardid);
		
		request.setAttribute("board", board);
		RequestDispatcher rd = request.getRequestDispatcher("boardUpdate.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String board_ID = request.getParameter("boardID");
		if(board_ID == null) throw new ServletException("board_id �뾾�쓬");
		BoardDAO boardDAO = new BoardDAO();
		String title = request.getParameter("Title");
		String content = request.getParameter("Content");

		request.setAttribute("board_ID", board_ID);
		int result = boardDAO.updateBoard(title, content, board_ID);
		if(result > 0) {   
			System.out.println("abc");
			response.sendRedirect("boardDetail?board_ID="+board_ID);
		}
	}

}
