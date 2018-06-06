package controladores;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.OpcionesDAO;
import modelo.Opcion;

/**
 * Servlet implementation class Opciones
 */
@WebServlet(name="Opciones",urlPatterns="/Opciones")
public class Opciones extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Opciones() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op=request.getParameter("op");
		RequestDispatcher rd=request.getRequestDispatcher("jsp/opciones/consultaGeneral.jsp");
		OpcionesDAO odao=new OpcionesDAO();
		switch(op){
		case "l":
			rd=request.getRequestDispatcher("jsp/opciones/consulta.jsp");
			rd.forward(request, response);
			break;
		case "cg":
			String json=odao.consultaGeneral();
			PrintWriter out=response.getWriter();
			response.setContentType("application/json");
			out.println(json);
			out.close();
			break;
		case "n":
			 rd=request.getRequestDispatcher("jsp/opciones/alta.jsp");
			 rd.forward(request, response);
			 break;
		case "i":
			Opcion o=new Opcion();
			odao=new OpcionesDAO();
			o.setNombre(request.getParameter("tipo"));
			o.setDescripcion(request.getParameter("desc"));
			if(odao.insertar(o)){
				rd=request.getRequestDispatcher("Opciones?op=cgo");
			}
			else{
				rd=request.getRequestDispatcher("jsp/opciones/alta.jsp");		
			}
			rd.forward(request, response);
			break;
		case "ci":
			int id=Integer.parseInt(request.getParameter("idOpcion"));
			o=odao.consultaOpcion(id);
			request.setAttribute("opcion",o);
			rd=request.getRequestDispatcher("jsp/opciones/edicion.jsp");
			rd.forward(request, response);
			break;
		case "cgo":
			rd=request.getRequestDispatcher("jsp/opciones/consultaGeneral.jsp");
			request.setAttribute("opciones",odao.consultaOpcionesPorPagina(1));
			request.setAttribute("paginas", odao.consultaPaginas());
			request.setAttribute("pag", 1);
			rd.forward(request, response);
			break;
		case "g":
			o=new Opcion();
			o.setId(Integer.parseInt(request.getParameter("id")));
			o.setNombre(request.getParameter("tipo"));
			o.setDescripcion(request.getParameter("desc"));
			if(odao.actualizar(o)){
				rd=request.getRequestDispatcher("Opciones?op=cgo");
			}
			else{
				request.setAttribute("opcion",o);
				rd=request.getRequestDispatcher("jsp/opciones/edicion.jsp");
				
			}
			rd.forward(request, response);
			break;
		case "d":
			id=Integer.parseInt(request.getParameter("idOpcion"));
			if(odao.eliminar(id)){
				rd=request.getRequestDispatcher("Opciones?op=cgo");
			}
			
			rd.forward(request, response);
			
			break;	
		case "cp":
			int pagina=Integer.parseInt(request.getParameter("page"));
			rd=request.getRequestDispatcher("jsp/opciones/consultaGeneral.jsp");
			request.setAttribute("opciones",odao.consultaOpcionesPorPagina(pagina));
			request.setAttribute("paginas", odao.consultaPaginas());
			request.setAttribute("pag", pagina);
			rd.forward(request, response);
			break;
		case "reg":
			rd=request.getRequestDispatcher("jsp/comunes/principal.jsp");
			rd.forward(request, response);
			break;
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
