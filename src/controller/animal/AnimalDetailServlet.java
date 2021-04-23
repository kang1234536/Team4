package controller.animal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.animal.*;



/**
 * Servlet implementation class AnimalDetailServlet
 */
@WebServlet("/AnimalDetailServlet")
public class AnimalDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnimalsDAO aniDAO = new AnimalsDAO();
		AnimalsVO animal = new AnimalsVO();
		String animalId = request.getParameter("animalId");
		
		animal = aniDAO.selectById(animalId);
		request.setAttribute("animal", animal);
		RequestDispatcher rd = request.getRequestDispatcher("animalDetail.jsp");
		rd.forward(request, response);
		
		RequestDispatcher rd2 = request.getRequestDispatcher("maps/carePlaceSearch.jsp");
		rd2.forward(request, response);
	}


}
