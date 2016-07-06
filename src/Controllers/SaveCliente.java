package Controllers;

import java.io.IOException;

import ServicesModel.PMF;
import ServicesModel.Cliente;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SaveCliente extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String nombres = req.getParameter("nombres");
		String apellidos = req.getParameter("apellidos");
		String fecha = req.getParameter("fecha");
		String sexo = req.getParameter("sexo");
		String user = req.getParameter("user");
		String pass = req.getParameter("pass");
		
		Cliente p = new Cliente( nombres,  apellidos,  fecha,  sexo,  user,  pass, true);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		
		try{
			pm.makePersistent(p);
			resp.sendRedirect("sucess-registroc.jsp");
			

		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("error-registroc.jsp");
		}finally{
			pm.close();
		}
	}
}