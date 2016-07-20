package Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class CerrarSesionAdmin extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws IOException, ServletException {
		
			HttpSession misesion= req.getSession();
			misesion.invalidate();
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login-admin.jsp");
		    rd.forward(req, resp);
			
	}
	
}

