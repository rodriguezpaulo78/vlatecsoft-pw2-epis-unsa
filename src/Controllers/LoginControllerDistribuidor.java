package Controllers;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import ServicesModel.Cliente;
import ServicesModel.PMF;
import ServicesModel.Distribuidor;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class LoginControllerDistribuidor extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
//		resp.setContentType("text/plain");
		String user = req.getParameter("username");
		String pass = req.getParameter("password");
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Query q = pm.newQuery("SELECT FROM " + Distribuidor.class.getName());
	
		List<Distribuidor> distribuidores = (List<Distribuidor>)q.execute();
		
		
		for(int i=0;i<distribuidores.size();i++){
			System.out.println(distribuidores.get(i).getUser());
			if(distribuidores.get(i).getUser().equalsIgnoreCase(user) && distribuidores.get(i).getPass().equalsIgnoreCase(pass)){
				System.out.println(distribuidores.get(i).getUser());
				HttpSession misesion= req.getSession(true);
				misesion.setAttribute("username", user);
				misesion.setAttribute("password", pass);
			     RequestDispatcher rd = getServletContext().getRequestDispatcher("/distribuidores.jsp");
			     rd.forward(req, resp);
			     return;
			}else{
				
			}
		}
		
		if(user.equalsIgnoreCase("demo")&&pass.equalsIgnoreCase("demo")){
			HttpSession misesion= req.getSession(true);
			misesion.setAttribute("username", user);
			misesion.setAttribute("password", pass);
		     RequestDispatcher rd = getServletContext().getRequestDispatcher("/distribuidores.jsp");
		     rd.forward(req, resp);
		}
		else{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/error-login-distribuidor.jsp");
		     rd.forward(req, resp);
		  
		}
	
	}
}


		
		
		
