package controladores;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.AlumnosDAO;
import datos.AulaDAO;
import datos.CarrerasDAO;
import datos.OpcionesDAO;

/**
 * Servlet implementation class Actos
 */
@WebServlet(name="Actos",urlPatterns="/Actos")
public class Actos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Actos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op=request.getParameter("op");
		switch(op){
			case "n":
				CarrerasDAO cdao=new CarrerasDAO();
				AulaDAO adao=new AulaDAO();
				OpcionesDAO odao=new OpcionesDAO();
				request.setAttribute("carreras", cdao.consultaGeneral());
				request.setAttribute("aulas", adao.consultaAulas());
				request.setAttribute("opciones", odao.consultaOpciones());
				RequestDispatcher rd=request.getRequestDispatcher("jsp/actos/alta.jsp");
				rd.forward(request, response);
				break;
			case "cac":
				int idCarrera=Integer.parseInt(request.getParameter("idCarrera"));
				AlumnosDAO alDao=new AlumnosDAO();
				String json=alDao.consultaAlumnos(idCarrera);
				PrintWriter out=response.getWriter();
				response.setContentType("application/json");
				out.println(json);
				out.close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
