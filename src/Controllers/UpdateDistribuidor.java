package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Distribuidor;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class UpdateDistribuidor extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Distribuidor.class);
		
		try{
			List<Distribuidor> distribuidores = (List<Distribuidor>) q.execute();
			if(distribuidores.get(i).getContest())
				distribuidores.get(i).setContest(false);
			else
				distribuidores.get(i).setContest(true);
			resp.sendRedirect("update-distribuidor.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("update-distribuidor.jsp");
		}finally{
			pm.close();
		}
	}
}
	