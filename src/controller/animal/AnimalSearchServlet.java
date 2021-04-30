package controller.animal;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
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

/**
 * Servlet implementation class AnimalSearchServlet
 */
@WebServlet("/animal/animalSearch")
public class AnimalSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String next_s = (String)request.getParameter("page");
		//String localA = request.getParameter("searchVal");
		String localA = "서울특별시";
		int next=0;
		if(next_s != null) {
			next = Integer.parseInt(next_s)-1;
		}
		AnimalsDAO aniDAO = new AnimalsDAO();
		List<AnimalsVO> aniList = new ArrayList<>();
		aniList = aniDAO.selectByLocalA(1+(10*next), 10+(10*next), localA);
		System.out.println(localA);
		//aniList = aniDAO.getList(1+(10*next), 10+(10*next));
		
//		for(AnimalsVO ani:aniList) {
//			System.out.println(ani);
//		}
		///
		int totalPage = (int) Math.ceil(aniDAO.getCount()/10.0);
		request.setAttribute("totalPage", totalPage);	
		request.setAttribute("aniList", aniList);
		
		HashSet<String> aniSet = aniDAO.selectCareAddr();
		 HashSet<String> local1 = new HashSet<String>();
		 HashSet<String> local2 = new HashSet<String>();
		 for(String addr: aniSet) {
	 		 local1.add(addr.split(" ")[0]);
			 local2.add(addr.split(" ")[1]);
		 }
		 request.setAttribute("local1", local1);
		 request.setAttribute("local2", local2);
		 request.setAttribute("localA", localA);
		 
		HashSet<String> set = aniDAO.selectKind();
		HashSet<String> kindSet = new HashSet<String>();
		String zz = null;
		String vv = null;
		for(String addr: set) {
			zz = addr.split(" ")[0];
			vv = zz.substring(1, zz.length()-1);
			kindSet.add(vv);
		}
		request.setAttribute("kindSet", kindSet);
		
		
//		 HttpSession session = request.getSession(); 
//		 Object obj = session.getAttribute("userID"); 
//
//		 if(obj==null) {
//		 response.sendRedirect("../login/LoginCheckServlet"); //嚥≪뮄�젃占쎌뵥占쎌뱽 占쎈툧占쎈뻥占쎌몵占쎈빍 嚥≪뮄�젃占쎌뵥占쎌뱽 占쎈릭�⑥쥙占쏙옙�뵬 嚥≪뮄�젃占쎌뵥筌≪럩�몵嚥∽옙 癰귣�源� 
//		 return; 
//		 }
		 
		
		RequestDispatcher rd = request.getRequestDispatcher("animalSearch.jsp");
		rd.forward(request, response);
		
		
		
	}

}
