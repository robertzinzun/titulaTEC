package controladores;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datos.UsuariosDAO;
import modelo.Usuario;

/**
 * Servlet implementation class Acceso
 */
@WebServlet(name="acceso",urlPatterns="/acceso")
public class Acceso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Acceso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String op=request.getParameter("op");
		RequestDispatcher rd=request.getRequestDispatcher("jsp/comunes/principal.jsp");
		switch(op){
			case "l":
				String user=request.getParameter("username");
				String pwd=request.getParameter("password");
				UsuariosDAO udao=new UsuariosDAO();
				Usuario u=udao.validar(user, pwd);
				if(u.getNombre()==null){
					rd=request.getRequestDispatcher("jsp/comunes/error.jsp");
				}
				else{
					HttpSession sesion=request.getSession();
					sesion.setAttribute("usuario",u);
					sesion.setMaxInactiveInterval(10*60);
				}
				break;
			case "e":
				//u=(Usuario)request.getSession().getAttribute("usuario");
				rd=request.getRequestDispatcher("jsp/usuarios/editarusuario.jsp");
				//request.setAttribute("usuario", u);
				break;
			case "g":
				u=new Usuario();
				u.setClave(request.getParameter("pwd"));
				u.setNombre(request.getParameter("nombre"));
				u.setEmail(request.getParameter("email"));
				u.setTipo(request.getParameter("tipo"));
				u.setEstatus(request.getParameter("estatus"));
				u.setId(Integer.parseInt(request.getParameter("idUsuario")));
				//realizar la modificacion a la bd
				udao=new UsuariosDAO();
				udao.actualizar(u);
				request.getSession().setAttribute("usuario", u);
				rd=request.getRequestDispatcher("jsp/usuarios/editarusuario.jsp");
				break;
			case "cs":
				request.getSession().invalidate();
				rd=request.getRequestDispatcher("index.jsp");
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
