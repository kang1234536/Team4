package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BoardDAO;
import model.BoardVO;

@WebServlet("/board/boardlist")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = new BoardDAO();
		List<BoardVO> blist = dao.selectList();
		request.setAttribute("board_list", blist);
		request.setAttribute("list_length", blist.size()+1);
		RequestDispatcher rd = request.getRequestDispatcher("boarder.jsp");
		rd.forward(request, response);
	}

}
