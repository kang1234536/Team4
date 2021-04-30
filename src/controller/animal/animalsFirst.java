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

import model.animal.AnimalsDAO;
import model.animal.AnimalsVO;

/**
 * Servlet implementation class animalsFirst
 */
@WebServlet("/animal/animalsFirst")
public class animalsFirst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String next_s = (String) request.getParameter("page");
		String localA = request.getParameter("searchVal");
		System.out.println("servlet들어옴  " + localA);
		String localB = request.getParameter("searchVal2");
		String getkindA = request.getParameter("kindA");
		String getkindB = request.getParameter("kindB");

		int next = 0;
		if (next_s != null) {
			next = Integer.parseInt(next_s) - 1;
		}
		AnimalsDAO aniDAO = new AnimalsDAO();
		List<AnimalsVO> aniList = new ArrayList<>();
		int totalPage = (int) Math.ceil(aniDAO.getCount() / 10.0);

		HashSet<String> aniSet = aniDAO.selectCareAddr();
		HashSet<String> local1 = new HashSet<String>();
		HashSet<String> local2 = new HashSet<String>();
		
		aniList = aniDAO.getList(1 + (10 * next), 10 + (10 * next));
		// for(AnimalsVO ani:aniList) {
		// System.out.println(ani);
		// }
		///

		for (String addr : aniSet) {
			local1.add(addr.split(" ")[0]);
			local2.add(addr.split(" ")[1]);
		}

		HashSet<String> set = aniDAO.selectKind();
		HashSet<String> kindSet = new HashSet<String>();
		String zz = null;
		String vv = null;
		for (String addr : set) {
			zz = addr.split(" ")[0];
			vv = zz.substring(1, zz.length() - 1);
			kindSet.add(vv);
		}
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("aniList", aniList);
		request.setAttribute("local1", local1);
		request.setAttribute("local2", local2);
		request.setAttribute("kindSet", kindSet);
		RequestDispatcher rd = request.getRequestDispatcher("animalList.jsp");
		rd.forward(request, response);
	}

	

}
