package Controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import ServicesModel.AuthenticatorAdmin;
import ServicesModel.Users;
 
//import sun.text.normalizer.ICUBinary.Authenticate;
 
public class LoginControllerCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	public LoginControllerCliente() {
		super();
	}
	
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws IOException, ServletException {
 
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		RequestDispatcher rd = null;
 
		AuthenticatorAdmin authenticator = new AuthenticatorAdmin();
		String result = authenticator.authenticate(username, password);
		if (result.equals("success")) {
			rd = request.getRequestDispatcher("/index.html");
			Users user = new Users(username, password);
			request.setAttribute("user", user);
		} else {
			rd = request.getRequestDispatcher("/error-login-cliente.jsp");
		}
		rd.forward(request, response);
	}
 
}