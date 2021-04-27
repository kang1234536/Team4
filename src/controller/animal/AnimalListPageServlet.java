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

import model.animal.AnimalsDAO;
import model.animal.AnimalsVO;

/**
 * Servlet implementation class AnimalListPageServlet
 */
@WebServlet("/animal/animalListPage")
public class AnimalListPageServlet extends HttpServlet {
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
		RequestDispatcher rd = request.getRequestDispatcher("animalListPage.jsp");
		rd.forward(request, response);
		
		
		/*
		 * HttpSession session = request.getSession(); Object obj =
		 * session.getAttribute("userID");
		 * 
		 * if(obj==null) { response.sendRedirect("../login/LoginCheckServlet");
		 * //濡쒓렇�씤�쓣 �븞�뻽�쑝�땲 濡쒓렇�씤�쓣 �븯怨좎��씪 濡쒓렇�씤李쎌쑝濡� 蹂대깂 return; }
		 */
		 
		
	}

}
