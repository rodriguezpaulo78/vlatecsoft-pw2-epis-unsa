package Controllers;

import java.io.IOException;

import ServicesModel.PMF;
import ServicesModel.Producto;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SaveProducto extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String grupo = req.getParameter("grupo");
		String marca = req.getParameter("marca");
		String linea = req.getParameter("linea");
		String item = req.getParameter("item");
		String descripcion = req.getParameter("descripcion");
		String fecha = req.getParameter("fecha");
		
		Producto p = new Producto( grupo,  marca,  linea,  item,  descripcion,  fecha, false);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		
		try{
			pm.makePersistent(p);
			resp.sendRedirect("sucess-registrop.jsp");
			

		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("error-registrop.jsp");
		}finally{
			pm.close();
		}
	}
}