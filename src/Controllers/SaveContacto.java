package Controllers;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import ServicesModel.Contacto;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class SaveContacto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String comentary = req.getParameter("comentary");
		
		Contacto p = new Contacto(name, email, comentary,false);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		
		try{
			pm.makePersistent(p);
			resp.sendRedirect("sucess-registro.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("error-registro.jsp");
		}finally{
			pm.close();
		}
	}
}
