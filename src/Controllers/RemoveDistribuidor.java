package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Distribuidor;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class RemoveDistribuidor extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Distribuidor.class);
		
		try{
			List<Distribuidor> distribuidores = (List<Distribuidor>) q.execute();
			pm.deletePersistent(distribuidores.get(i));
			resp.sendRedirect("eliminar-distribuidor.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("eliminar-distribuidor.jsp");
		}finally{
			pm.close();
		}
	}
}