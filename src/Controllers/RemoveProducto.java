package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Producto;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class RemoveProducto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Producto.class);
		
		try{
			List<Producto> productos = (List<Producto>) q.execute();
			pm.deletePersistent(productos.get(i));
			resp.sendRedirect("eliminar-producto.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("eliminar-producto.jsp");
		}finally{
			pm.close();
		}
	}
}