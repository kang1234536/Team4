package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AnimalsDAO;

/**
 * Servlet implementation class MapServlet
 */
@WebServlet("/MapServlet")
public class MapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("googlemap 요청");
		String careAddr;
		String animalId;
		animalId = "411322202100033";
		AnimalsDAO aniDao = new AnimalsDAO();
		careAddr = aniDao.selectById(animalId).getCareAddr();
		request.setAttribute("careAddr", careAddr);
		request.setAttribute("animalid", animalId);
		RequestDispatcher rd = request.getRequestDispatcher("maps/carePlaceSearch.jsp");
		rd.forward(request, response);
	}

	

}
