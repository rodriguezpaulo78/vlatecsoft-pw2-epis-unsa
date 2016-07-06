package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Cliente;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class RemoveCliente extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Cliente.class);
		
		try{
			List<Cliente> clientes = (List<Cliente>) q.execute();
			pm.deletePersistent(clientes.get(i));
			resp.sendRedirect("eliminar-cliente.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("eliminar-cliente.jsp");
		}finally{
			pm.close();
		}
	}
}