package Controllers;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import ServicesModel.Cliente;
import ServicesModel.PMF;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LoginControllerCliente extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
//		resp.setContentType("text/plain");
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery("SELECT FROM " + Cliente.class.getName());
	
		List<Cliente> clientes = (List<Cliente>)q.execute();
		
		
		for(int i=0;i<clientes.size();i++){
			System.out.println(clientes.get(i).getUser());
			if(clientes.get(i).getUser().equalsIgnoreCase(user) && clientes.get(i).getPass().equalsIgnoreCase(pass)){
				System.out.println(clientes.get(i).getUser());
				System.out.println(clientes.get(i).getPass());
				HttpSession misesion= req.getSession(true);
				misesion.setAttribute("username", user);
				misesion.setAttribute("password", pass);
			     RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
			     rd.forward(req, resp);
			     return;
			}else{
				
			}
		}
		
		if(user.equalsIgnoreCase("demo")&&pass.equalsIgnoreCase("demo")){
			HttpSession misesion= req.getSession(true);
			misesion.setAttribute("username", user);
			misesion.setAttribute("password", pass);
		     RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
		     rd.forward(req, resp);
		}
		else{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/error-login-cliente.jsp");
		     rd.forward(req, resp);
		  
		}
	
	}
}

