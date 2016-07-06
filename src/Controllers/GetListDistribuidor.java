package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import ServicesModel.PMF;
import ServicesModel.Distribuidor;
import javax.jdo.PersistenceManager;
import javax.jdo.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class GetListDistribuidor extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		char op = req.getParameter("opcion").charAt(0);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");
		
		String bus = req.getParameter("busqueda");
		//se utiliza para nicia�
		
		Query q = pm.newQuery(Distribuidor.class);

		
		switch (op) {
		case 'p':
			q.setFilter("apPat == apPatParam");
			q.declareParameters("String apPatParam");
		
			break;
		case 'm':
			q.setFilter("apMat == apMatParam");
			q.declareParameters("String apMatParam");
		
			break;
		case 'n':
			q.setFilter("nombre == nombreParam");
			q.declareParameters("String nombreParam");
			
			break;
		case 'd': 
			q.setFilter("dni == dniParam");
			q.declareParameters("String dniParam");		
			break;
		case 'e':
			q.setFilter("email == emailParam");
			q.declareParameters("String emailParam");
		
			break;
		case 't':
			q.setFilter("tel == telParam");
			q.declareParameters("String telParam");
			
			break;
		case 'u': 
			q.setFilter("user == userParam");
			q.declareParameters("String userParam");		
			break;
		case 'l':
			List<Distribuidor> distribuidores = (List<Distribuidor>) q.execute();
		break;
		default:
			break;
		}
		
		try{
			List<Distribuidor> distribuidores = (List<Distribuidor>) q.execute(bus);
			
			if(distribuidores.size()==0){
				resp.sendRedirect("error-consulta.jsp");
			}else{
				out.println("<h1>DISTRIBUIDORES REGISTRADOS.</h1>");
				for(Distribuidor p: distribuidores){
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

