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


 


@WebServlet("/animal/animalsList")
public class AnimalsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		///Paging
		String next_s = (String)request.getParameter("page");;
		int next=0;
		if(next_s != null) {
			next = Integer.parseInt(next_s)-1;
		}
		
		AnimalsDAO aniDAO = new AnimalsDAO();
		List<AnimalsVO> aniList = new ArrayList<>();
		aniList = aniDAO.getList(1+(10*next), 10+(10*next));
		for(AnimalsVO ani:aniList) {
			System.out.println(ani);
		}
		///
		int totalPage = (int) Math.ceil(aniDAO.getCount()/10.0);
		request.setAttribute("totalPage", totalPage);	
		
		request.setAttribute("aniList", aniList);
		RequestDispatcher rd = request.getRequestDispatcher("animalList.jsp");
		rd.forward(request, response);
		
		
		 HttpSession session = request.getSession(); 
		 Object obj = session.getAttribute("userID"); 
		 
		 if(obj==null) {
		 response.sendRedirect("../login/LoginCheckServlet"); //嚥≪뮄�젃占쎌뵥占쎌뱽 占쎈툧占쎈뻥占쎌몵占쎈빍 嚥≪뮄�젃占쎌뵥占쎌뱽 占쎈릭�⑥쥙占쏙옙�뵬 嚥≪뮄�젃占쎌뵥筌≪럩�몵嚥∽옙 癰귣�源� 
		 return; 
		 }
		 
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}





