package controladores;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import datos.AulaDAO;

/**
 * Servlet implementation class Aulas
 */
@WebServlet(name="aulas",urlPatterns="/aulas")
public class Aulas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Aulas() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op=request.getParameter("op");
		AulaDAO adao=new AulaDAO();
		RequestDispatcher rd=request.getRequestDispatcher("jsp/aulas/consultaaulas.jsp");
		switch(op){
			case "j":
				rd.forward(request, response);
				break;
			case "cg":
				String json=adao.consultaGeneral();
				response.setContentType("application/json");
		        PrintWriter out=response.getWriter();
		        out.println(json);
		        out.close();
			
		}
				
		//response.setContentType("text/html;charset=UTF-8");
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
