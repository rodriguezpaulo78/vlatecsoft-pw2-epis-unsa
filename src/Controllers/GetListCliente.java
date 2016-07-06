package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import ServicesModel.PMF;
import ServicesModel.Cliente;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class GetListCliente extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		char op = req.getParameter("opcion").charAt(0);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		String bus = req.getParameter("busqueda");
		//se utiliza para nicia�
		
		Query q = pm.newQuery(Cliente.class);

		
		switch (op) {
		case 'n':
			q.setFilter("nombres == nombresParam");
			q.declareParameters("String nombresParam");
		
			break;
		case 'a':
			q.setFilter("apellidos == apellidosParam");
			q.declareParameters("String apellidosParam");
		
			break;
		case 'f':
			q.setFilter("fecha == fechaParam");
			q.declareParameters("String fechaParam");
			
			break;
		case 's': 
			q.setFilter("sexo == sexoParam");
			q.declareParameters("String sexoParam");		
			break;
		case 'u':
			q.setFilter("user == userParam");
			q.declareParameters("String userParam");
		
			break;
		case 'p':
			q.setFilter("pass == passParam");
			q.declareParameters("String passParam");
			
			break;
		case 'l':
			List<Cliente> clientes = (List<Cliente>) q.execute();
		break;
		default:
			break;
		}
		
		try{
			List<Cliente> clientes = (List<Cliente>) q.execute(bus);
			
			if(clientes.size()==0){
				resp.sendRedirect("error-consulta.jsp");
			}else{
				out.println("<h1>CLIENTES REGISTRADOS.</h1>");
				for(Cliente p: clientes){
					out.println(p);
				}
				out.println("<br><a href='consulta-clientes.jsp'>Hacer otra consulta</a>");
			}
		}catch(Exception e){
			
		}finally{
			 q.closeAll();
		}
		
	}
}
