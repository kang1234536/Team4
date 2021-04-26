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
import javax.servlet.http.HttpSession;

import model.animal.AnimalsDAO;
import model.animal.AnimalsVO;





@WebServlet("/AnimalsListServlet")
public class AnimalsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AnimalsDAO aniDAO = new AnimalsDAO();
		List<AnimalsVO> aniList = new ArrayList<>();
		aniList = aniDAO.selectAll();
		for(AnimalsVO ani:aniList) {
			System.out.println(ani);
		}
		
		request.setAttribute("aniList", aniList);
		RequestDispatcher rd = request.getRequestDispatcher("animal/animalList.jsp");
		rd.forward(request, response);
		
		
		 HttpSession session = request.getSession(); 
		 Object obj = session.getAttribute("userID"); 
		 
		 if(obj==null) {
		 response.sendRedirect("../login/LoginCheckServlet"); //로그인을 안했으니 로그인을 하고와라 로그인창으로 보냄 
		 return; 
		 }
		 
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}





