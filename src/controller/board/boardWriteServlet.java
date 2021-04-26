package controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.board.BoardDAO;

@WebServlet("/board/boardWrite")
public class boardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		BoardDAO boardDAO = new BoardDAO();
		String title = request.getParameter("Title");
		String content = request.getParameter("Content");

		HttpSession session = request.getSession();
		String userID = (String) session.getAttribute("userID");

		int result = boardDAO.insertBoard(title, content, userID);
		if(result > 0) {
			response.sendRedirect("boardlist");
		}
	}
}
