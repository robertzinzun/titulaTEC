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

/**
 * Servlet implementation class Opciones
 */
@WebServlet(name="opciones",urlPatterns="/Opciones")
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
		RequestDispatcher rd=request.
				getRequestDispatcher("jsp/opciones/consulta.jsp");
		switch(op){
		case "l":
			rd.forward(request, response);
			break;
		case "cg":
			OpcionesDAO odao=new OpcionesDAO();
			String json=odao.consultaGeneral();
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
