package controller.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user.UserDAO;

@WebServlet("/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 濡쒓렇�씤 �솕硫댁뿉 �엯�젰�맂 �븘�씠�뵒�� 鍮꾨�踰덊샇瑜� 媛��졇�삩�떎
        String userID = request.getParameter("userID");
        String userPW = request.getParameter("userPW");

        // DB�뿉�꽌 �븘�씠�뵒, 鍮꾨�踰덊샇 �솗�씤
        UserDAO dao = UserDAO.getInstance();
        int check = dao.loginCheck(userID, userPW);

        // DB �깮�꽦 �쟾 �뀒�뒪�듃
//    int check = 0;
//    if(id.equals("test") && pw.equals("test"))
//        check = 1;

        // URL 諛� 濡쒓렇�씤愿��젴 �쟾�떖 硫붿떆吏�
        String msg = "";

        if (check == 1)    // 濡쒓렇�씤 �꽦怨�
        {
            // �꽭�뀡�뿉 �쁽�옱 �븘�씠�뵒 �꽭�똿
//            HttpSession session = null;
//            session.setAttribute("sessionID", userID); //�븘�씠�뵒 留먭퀬 荑좏궎 �꽔�뼱�빞�븷 �벏
            msg = "/2.Project/";
        } else if (check == 0) // 鍮꾨�踰덊샇媛� ��由닿꼍�슦
        {
            msg = "/LoginForm.jsp?msg=0";
        } else    // �븘�씠�뵒媛� ��由닿꼍�슦
        {
            msg = "/LoginForm.jsp?msg=-1";
        }

        // sendRedirect(String URL) : �빐�떦 URL濡� �씠�룞
        // URL�뮘�뿉 get諛⑹떇 泥섎읆 �뜲�씠�꽣瑜� �쟾�떖媛��뒫
        response.sendRedirect(msg);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
