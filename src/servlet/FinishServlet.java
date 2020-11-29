package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class FinishServlet
 */
@WebServlet("/FinishServlet")
public class FinishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("Finish", "true");
		HttpSession session = request.getSession(false);
		session.removeAttribute("point");
		session.removeAttribute("maxquiznum");
		RequestDispatcher dispatch = request.getRequestDispatcher("./index.jsp#Quiz");//Main
		dispatch.forward(request, response);
	}
}
