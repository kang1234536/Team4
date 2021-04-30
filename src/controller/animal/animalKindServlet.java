package controller.animal;

import java.io.IOException;
import java.util.HashSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.animal.AnimalsDAO;

/**
 * Servlet implementation class animalKind
 */
@WebServlet("/animal/animalKind")
public class animalKindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String kind = request.getParameter("kind");
		System.out.println(kind);
		AnimalsDAO aniDAO = new AnimalsDAO();
		HashSet<String> set = aniDAO.selectKind();
		
		
		
		HashSet<String> detailSet = new HashSet<String>();
		String zz;
		String vv;
		
		if(kind.equals("개")) {
			for(String addr: set) {
				zz = addr.split(" ")[0];
				vv = zz.substring(1, zz.length()-1);
				if(vv.equals("개"))
					detailSet.add(addr.split(" ", 2)[1]);
			}
		}else if(kind.equals("고양이")) {
			for(String addr: set) {
				zz = addr.split(" ")[0];
				vv = zz.substring(1, zz.length()-1);
				if(vv.equals("고양이"))
					detailSet.add(addr.split(" ", 2)[1]);
			}
		}else if(kind.equals("기타축종")){
			for(String addr: set) {
				zz = addr.split(" ")[0];
				vv = zz.substring(1, zz.length()-1);
				if(vv.equals("기타축종"))
					detailSet.add(addr.split(" ", 2)[1]);
			}
		}
		System.out.println(detailSet);
		request.setAttribute("detailSet", detailSet);
		
		RequestDispatcher rd = request.getRequestDispatcher("detailKind.jsp");
		rd.forward(request, response);
		
	}


}
