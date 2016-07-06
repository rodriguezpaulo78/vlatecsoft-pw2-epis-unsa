package Controllers;

import java.io.IOException;

import ServicesModel.PMF;
import ServicesModel.Distribuidor;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class SaveDistribuidor extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws IOException {
		String apPat = req.getParameter("apPat");
		String apMat = req.getParameter("apMat");
		String nombre = req.getParameter("nombre");
		String dni = req.getParameter("dni");
		String email = req.getParameter("email");
		String tel = req.getParameter("tel");
		String user = req.getParameter("user");
		String pass = req.getParameter("pass");
		
		Distribuidor p = new Distribuidor( apPat,  apMat,  nombre,  dni,  email,  tel,  user,  pass, false);
		
		PersistenceManager pm = PMF.get().getPersistenceManager();
		resp.setContentType("text/html");
		
		try{
			pm.makePersistent(p);
			resp.sendRedirect("sucess-registrod.jsp");
			

		}catch(Exception e){
			System.out.println(e);
			resp.sendRedirect("error-registrod.jsp");
		}finally{
			pm.close();
		}
	}
}
