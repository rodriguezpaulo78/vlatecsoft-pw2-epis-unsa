package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Contacto;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class UpdateContacto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Contacto.class);
		
		try{
			List<Contacto> Contactos = (List<Contacto>) q.execute();
			if(Contactos.get(i).getContest())
				Contactos.get(i).setContest(false);
			else
				Contactos.get(i).setContest(true);
			resp.sendRedirect("update-contacto.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("update-contacto.jsp");
		}finally{
			pm.close();
		}
	}
}