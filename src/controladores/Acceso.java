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
		String user=request.getParameter("username");
		String pwd=request.getParameter("password");
		String op=request.getParameter("op");
		RequestDispatcher rd=request.getRequestDispatcher("jsp/comunes/principal.jsp");
		switch(op){
			case "l":
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
