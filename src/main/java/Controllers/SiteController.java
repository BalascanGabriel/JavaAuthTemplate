package Controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().print("Welcome to Site CONTROLLER");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name,password;
		name = request.getParameter("name");
		password = request.getParameter("password");
		
		request.setAttribute("nume", name);
		
		//Aici ar trebui sa facem verificarile, dar o sa o facem doar de simulare
		if(name.equals("Gabe") && password.equals("gabe")) {
			//se invalideaza sesiunea daca exista vreuna
			request.getSession().invalidate();
			//se porneste alta sesiune
			HttpSession newSession = request.getSession(true);
			//si mai setam un timp maxim de inactivitate
			newSession.setMaxInactiveInterval(300); //300 sec
			request.getRequestDispatcher("memberArea.jsp").forward(request, response);
		}else {
			response.sendRedirect("login.jsp");
		}
		
		
	}

}
