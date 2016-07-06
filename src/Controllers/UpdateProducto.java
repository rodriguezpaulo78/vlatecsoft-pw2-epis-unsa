package Controllers;

import java.io.IOException;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.http.*;

import ServicesModel.Producto;
import ServicesModel.PMF;

@SuppressWarnings("serial")
public class UpdateProducto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		
		String indice = req.getParameter("indice");
		int i=Integer.parseInt(indice)-1;
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		Query q = pm.newQuery(Producto.class);
		
		try{
			List<Producto> productos = (List<Producto>) q.execute();
			if(productos.get(i).getContest())
				productos.get(i).setContest(false);
			else
				productos.get(i).setContest(true);
			resp.sendRedirect("update-producto.jsp");
			
		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("update-producto.jsp");
		}finally{
			pm.close();
		}
	}
}
	