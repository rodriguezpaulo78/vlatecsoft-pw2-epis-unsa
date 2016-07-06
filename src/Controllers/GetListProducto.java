package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import ServicesModel.PMF;
import ServicesModel.Producto;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class GetListProducto extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		char op = req.getParameter("opcion").charAt(0);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		String bus = req.getParameter("busqueda");
		//se utiliza para nicia�
		
		Query q = pm.newQuery(Producto.class);

		
		switch (op) {
		case 'g':
			q.setFilter("grupo == grupoParam");
			q.declareParameters("String grupoParam");
		
			break;
		case 'm':
			q.setFilter("marca == marcaParam");
			q.declareParameters("String marcaParam");
		
			break;
		case 'l':
			q.setFilter("linea == lineaParam");
			q.declareParameters("String lineaParam");
			
			break;
		case 'i': 
			q.setFilter("item == itemParam");
			q.declareParameters("String itemParam");		
			break;
		case 'd':
			q.setFilter("descripcion == descripcionParam");
			q.declareParameters("String descripcionParam");
		
			break;
		case 'f':
			q.setFilter("fecha == fechaParam");
			q.declareParameters("String fechaParam");
			
			break;
		case 'p':
			List<Producto> productos = (List<Producto>) q.execute();
		break;
		default:
			break;
		}
		
		try{
			List<Producto> productos = (List<Producto>) q.execute(bus);
			
			if(productos.size()==0){
				resp.sendRedirect("error-consulta.jsp");
			}else{
				out.println("<h1>PRODUCTOS REGISTRADOS.</h1>");
				for(Producto p: productos){
					out.println(p);
				}
				out.println("<br><a href='consulta-distribuidores.jsp'>Hacer otra consulta</a>");
			}
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}