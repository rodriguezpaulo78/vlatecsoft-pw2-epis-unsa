package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Contacto;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class RemoveContacto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Contacto.class);
		
		try{
			List<Contacto> Contactos = (List<Contacto>) q.execute();
			pm.deletePersistent(Contactos.get(i));
			resp.sendRedirect("eliminar-contacto.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("eliminar-contacto.jsp");
		}finally{
			pm.close();
		}
	}
}