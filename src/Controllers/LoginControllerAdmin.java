package Controllers;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LoginControllerAdmin extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
//		resp.setContentType("text/plain");
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		
		if ((((user.equalsIgnoreCase("Paulo"))&& (pass.equals("123456")))
				||(((user.equalsIgnoreCase("Arturo"))&& (pass.equals("123456")))
				||(((user.equalsIgnoreCase("Carlos"))&& (pass.equals("123456")))
				||(((user.equalsIgnoreCase("Danilo"))&& (pass.equals("123456")))))))){
			HttpSession misesion= req.getSession(true);
			
			misesion.setAttribute("username", user);
			
			
		     RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin.jsp");
		     rd.forward(req, resp);
		}
		else{
			HttpSession misesion= req.getSession(true);
				
			misesion.setAttribute("username", false);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/error-login-admin.jsp");
		     rd.forward(req, resp);
		     
		  
		}
	}
}
