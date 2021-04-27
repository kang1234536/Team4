package controller.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.*;

@WebServlet("/board/boardlist")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * String next_s = (String)request.getParameter("page");; int next=0; if(next_s
		 * != null) { next = Integer.parseInt(next_s)-1; }
		 */
		BoardDAO dao = new BoardDAO();
		/* List<BoardVO> blist = dao.getList(1+(10*next), 10+(10*next)); */
		//List<BoardVO> blist = dao.selectList();
		int totalData = (int) Math.ceil(dao.getCount()/10.0);
		request.setAttribute("totalData", totalData);
		/* request.setAttribute("board_list", blist); */
		/*
		 * if(next==0) request.setAttribute("list_length", dao.getCount()+1); else
		 * request.setAttribute("list_length", (dao.getCount()+1)-10*next);
		 */
		RequestDispatcher rd = request.getRequestDispatcher("boardList.jsp");
		rd.forward(request, response);
	}

}
