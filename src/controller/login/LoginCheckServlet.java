package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.user.UserDAO;
import model.user.UserVO;

@WebServlet("/login/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
<<<<<<< HEAD
        // 濡쒓렇�씤 �솕硫댁뿉 �엯�젰�맂 �븘�씠�뵒�� 鍮꾨�踰덊샇瑜� 媛��졇�삩�떎
        UserVO user = new UserVO();
=======
        // 로그인 화면에 입력된 아이디와 비밀번호를 가져온다
        UserDAO dao = UserDAO.getInstance();
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
        String userID = request.getParameter("userID");
        String userPW = request.getParameter("userPW");

<<<<<<< HEAD
        // DB�뿉�꽌 �븘�씠�뵒, 鍮꾨�踰덊샇 �솗�씤
        UserDAO dao = UserDAO.getInstance();
=======
        UserVO user = dao.selectByUserId(userID);

        // DB에서 아이디, 비밀번호 확인
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
        int check = dao.loginCheck(userID, userPW);

<<<<<<< HEAD
        // URL 諛� 濡쒓렇�씤愿��젴 �쟾�떖 硫붿떆吏�
=======
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
        String msg = "";

        if (check == 1)    // 濡쒓렇�씤 �꽦怨�
        {
            HttpSession session = request.getSession();
            System.out.println(session.getId() + " �꽭�뀡 �뿰寃�");
            session.setAttribute("userID", userID);
<<<<<<< HEAD
            msg = "/BowMeow";
        } else if (check == 0) // 鍮꾨�踰덊샇媛� ��由닿꼍�슦
=======
            session.setAttribute("username", user.getUserName());
            response.sendRedirect("../index.jsp");
        } else if (check == -1) // 아이디가 틀림
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
        {
<<<<<<< HEAD
            msg = "/BowMeow/login/LoginForm.jsp?msg=0";
        } else    // �븘�씠�뵒媛� ��由닿꼍�슦
        {
            msg = "/BowMeow/login/LoginForm.jsp?msg=-1";
=======
            msg = "입력하신 아이디는 존재하지 않습니다.";
            request.setAttribute("msg", msg);
            response.sendRedirect("/login/LoginForm.jsp");
        } else if (check == 0){ // 비밀번호가 틀림
            msg = "입력하신 비밀번호가 맞지 않습니다.";
            request.setAttribute("msg", msg);
            response.sendRedirect("/login/LoginForm.jsp");
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
        }

<<<<<<< HEAD
        // sendRedirect(String URL) : �빐�떦 URL濡� �씠�룞
        // URL�뮘�뿉 get諛⑹떇 泥섎읆 �뜲�씠�꽣瑜� �쟾�떖媛��뒫
        response.sendRedirect(msg);
=======

>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
