package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import ServicesModel.PMF;
import ServicesModel.Contacto;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class GetListContacto extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		char op = req.getParameter("opcion").charAt(0);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		String bus = req.getParameter("busqueda");
		//se utiliza para nicia�
		
		Query q = pm.newQuery(Contacto.class);

		
		switch (op) {
		case 'n':
			q.setFilter("nombre == nombreParam");
			q.declareParameters("String nombreParam");
			
			break;
		case 'e':
			q.setFilter("email == emailParam");
			q.declareParameters("String emailParam");
		
			break;
		case 'c':
			q.setFilter("comentary == comentaryParam");
			q.declareParameters("String comentaryParam");
			
			break;
		case 'l':
			List<Contacto> contactos = (List<Contacto>) q.execute();
		break;
		default:
			break;
		}
		
		try{
			List<Contacto> contactos = (List<Contacto>) q.execute(bus);
			
			if(contactos.size()==0){
				resp.sendRedirect("error-consulta.jsp");
			}else{
				out.println("<h1>MENSAJES REGISTRADOS.</h1>");
				for(Contacto p: contactos){
					out.println(p);
				}
				out.println("<br><a href='consulta-contacto.jsp'>Hacer otra consulta</a>");
			}
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}