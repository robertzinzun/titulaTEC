package controladores;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Usuarios
 */
@WebServlet(name="usuarios",urlPatterns="/usuarios")
public class Usuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Usuarios() {
        super();
        // TODO Auto-generated constructor stub
    }
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		/*Logica de las peticiones*/
		String op=request.getParameter("op");
		System.out.println(op);	
		RequestDispatcher rd=request.getRequestDispatcher("jsp/comunes/principal.jsp");
		switch(op){
		case "n":
			rd=request.getRequestDispatcher("jsp/usuarios/altausuario.jsp");
			break;
		case "i":
			rd=request.getRequestDispatcher("jsp/usuarios/consultausuarios.jsp");
			break;
		case "ci":
			rd=request.getRequestDispatcher("jsp/usuarios/editarusuario.jsp");
			break;
		case "e":
			rd=request.getRequestDispatcher("jsp/usuarios/consultausuarios.jsp");
			break;
		case "d":
			rd=request.getRequestDispatcher("jsp/usuarios/consultausuarios.jsp");
			break;

		case "cg":
			rd=request.getRequestDispatcher("jsp/usuarios/consultausuarios.jsp");
			break;

		}
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
