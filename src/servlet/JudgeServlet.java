package servlet;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/JudgeServlet")
public class JudgeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//セッションスコープに保存された結果を取得
	//falseの場合、新しくセッションスコープを作りなおさない。=既存のもの
	HttpSession session = request.getSession(false);
	//パラメータを取得
	String choice = request.getParameter("choice");
	//正誤判定
	if (choice == null || choice.length() == 0){
		// miss.jsp にページ遷移
		RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/miss.jsp");
		dispatch.forward(request, response);
	} else {
		if (choice.equals("answer")) {
			// correct.jsp にページ遷移
			//正解だったら、＋1点
			session.setAttribute("point", (int)session.getAttribute("point") + 1);
			RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/correct.jsp");
			dispatch.forward(request, response);
		}
		else {//必要なのか？
			// miss.jsp にページ遷移
			RequestDispatcher dispatch = request.getRequestDispatcher("/WEB-INF/miss.jsp");
			dispatch.forward(request, response);
		}
	}
}
}
