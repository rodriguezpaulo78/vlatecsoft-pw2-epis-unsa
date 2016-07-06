package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import ServicesModel.AuthenticatorDistribuidor;
import ServicesModel.Users;
 
//import sun.text.normalizer.ICUBinary.Authenticate;
 
public class LoginControllerDistribuidor extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	public LoginControllerDistribuidor() {
		super();
	}
	
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws IOException, ServletException {
 
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;
 
		AuthenticatorDistribuidor authenticator = new AuthenticatorDistribuidor();
		String result = authenticator.authenticate(username, password);
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/distribuidores.jsp");
			Users user = new Users(username, password);
			request.setAttribute("user", user);
		} else {
			rd = request.getRequestDispatcher("/error-login-distribuidor.jsp");
		}
		rd.forward(request, response);
	}
 
}
