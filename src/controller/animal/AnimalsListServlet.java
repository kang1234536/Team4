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

@WebServlet("/animal/animalsList")
public class AnimalsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/// Paging
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

		// whether or not someone click the condition button
		if (localA == null || localA.equals("전체")) {

			if (localB == null || localB.equals("전체")) {
				if(getkindA == null || getkindA.equals("전체")) {
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
					RequestDispatcher rd = request.getRequestDispatcher("animalSearch.jsp");
					rd.forward(request, response);
				}
				//localA and B is null, kindA is not null
				else {
					//kindB is null
					if(getkindB == null || getkindB.equals("전체")) {
						aniList = aniDAO.selectByKindA(1 + (10 * next), 10 + (10 * next), getkindA);
						System.out.println("kind :" + getkindA);
						// aniList = aniDAO.getList(1+(10*next), 10+(10*next));
	
						for (AnimalsVO ani : aniList) {
							System.out.println(ani);
						}
	
						for (String addr : aniSet) {
							if (!(addr.split(" ")[0].equals(localA))) {
								local1.add(addr.split(" ")[0]);
							}
							if (!(addr.split(" ")[1]).equals(localB)) {
								local2.add(addr.split(" ")[1]);
							}
						}
	
						request.setAttribute("localA", localA);
	
						HashSet<String> set = aniDAO.selectKind();
						HashSet<String> kindSet = new HashSet<String>();
						String zz = null;
						String vv = null;
						for (String addr : set) {
							zz = addr.split(" ")[0];
							vv = zz.substring(1, zz.length() - 1);
							if(!(vv.equals(getkindA))) {
								kindSet.add(vv);
							}
						}
						request.setAttribute("totalPage", totalPage);
						request.setAttribute("aniList", aniList);
						request.setAttribute("local1", local1);
						request.setAttribute("local2", local2);
						request.setAttribute("kindSet", kindSet);
						request.setAttribute("kindA", getkindA);
						RequestDispatcher rd = request.getRequestDispatcher("animalSearch.jsp");
						rd.forward(request, response);
					}else {//kindB is not null
						aniList = aniDAO.selectByKindB(1 + (10 * next), 10 + (10 * next), getkindB);
						System.out.println("kindB :" + getkindB);
						// aniList = aniDAO.getList(1+(10*next), 10+(10*next));
	
						for (AnimalsVO ani : aniList) {
							System.out.println(ani);
						}
	
						for (String addr : aniSet) {
							if (!(addr.split(" ")[0].equals(localA))) {
								local1.add(addr.split(" ")[0]);
							}
							if (!(addr.split(" ")[1]).equals(localB)) {
								local2.add(addr.split(" ")[1]);
							}
						}
	
						request.setAttribute("localA", localA);
						HashSet<String> set = aniDAO.selectKind();
						HashSet<String> kindSet = new HashSet<String>();
						String zz = null;
						String vv = null;
						for (String addr : set) {
							zz = addr.split(" ")[0];
							vv = zz.substring(1, zz.length() - 1);
							if(!(vv.equals(getkindA))) {
								kindSet.add(vv);
							}
						}
						request.setAttribute("totalPage", totalPage);
						request.setAttribute("aniList", aniList);
						request.setAttribute("local1", local1);
						request.setAttribute("local2", local2);
						request.setAttribute("kindSet", kindSet);
						request.setAttribute("kindA", getkindA);
						request.setAttribute("kindB", getkindB);
						RequestDispatcher rd = request.getRequestDispatcher("animalSearch.jsp");
						rd.forward(request, response);
					}
					
				}
			}
			 else { //localA is null, localB is not null
				aniList = aniDAO.selectByLocalB(1 + (10 * next), 10 + (10 * next), localB);
				System.out.println("localA is null and localB is not null :" + localB);
				// aniList = aniDAO.getList(1+(10*next), 10+(10*next));

				for (AnimalsVO ani : aniList) {
					System.out.println(ani);
				}

				for (String addr : aniSet) {
					if (!(addr.split(" ")[0].equals(localA))) {
						local1.add(addr.split(" ")[0]);
					}
					if (!(addr.split(" ")[1]).equals(localB)) {
						local2.add(addr.split(" ")[1]);
					}
				}

				request.setAttribute("localA", localA);
				request.setAttribute("localB", localB);

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
				RequestDispatcher rd = request.getRequestDispatcher("animalSearch.jsp");
				rd.forward(request, response);
			}

			
		} else {//localA is not null
			if (localB == null || localB.equals("전체")) {
				aniList = aniDAO.selectByLocalA(1 + (10 * next), 10 + (10 * next), localA);
				System.out.println("else :" + localA);
				// aniList = aniDAO.getList(1+(10*next), 10+(10*next));

				for (AnimalsVO ani : aniList) {
					System.out.println(ani);
				}

				for (String addr : aniSet) {
					if (!(addr.split(" ")[0].equals(localA))) {
						local1.add(addr.split(" ")[0]);
					}
					local2.add(addr.split(" ")[1]);
				}

				request.setAttribute("localA", localA);

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
				RequestDispatcher rd = request.getRequestDispatcher("animalSearch.jsp");
				rd.forward(request, response);
			} else { //All conditions are not null
				
			}
		}

//		 HttpSession session = request.getSession(); 
//		 Object obj = session.getAttribute("userID"); 

//		 if(obj==null) {
//		 response.sendRedirect("../login/LoginCheckServlet"); //嚥≪뮄�젃占쎌뵥占쎌뱽 占쎈툧占쎈뻥占쎌몵占쎈빍 嚥≪뮄�젃占쎌뵥占쎌뱽 占쎈릭�⑥쥙占쏙옙�뵬 嚥≪뮄�젃占쎌뵥筌≪럩�몵嚥∽옙 癰귣�源� 
//		 return; 
//		 }

	}

}
