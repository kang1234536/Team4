package controller.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.board.*;

@WebServlet("/board/qnalist")
public class QnaListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; 
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("qnaBoardList.jsp");
		rd.forward(request, response);
	}

}
