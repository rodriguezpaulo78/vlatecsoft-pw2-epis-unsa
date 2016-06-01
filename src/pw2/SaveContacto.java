package pw2;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SaveContacto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String name = req.getParameter("name");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		String comentary = req.getParameter("comentary");
		
		Contacto p = new Contacto(name, lastname, email, comentary);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		
		try{
			pm.makePersistent(p);
			resp.sendRedirect("sucess.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("error.jsp");
		}finally{
			pm.close();
		}
	}
}
