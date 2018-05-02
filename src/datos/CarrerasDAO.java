package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.sql.Statement;

import modelo.Carrera;

public class CarrerasDAO {

	public CarrerasDAO() {
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Carrera> consultaGeneral(){
		String sql="select idCarrera,nombre from carreras";
		ArrayList<Carrera> lista=new ArrayList<Carrera>();
		try{
			ConexionBD cn=new ConexionBD();
			Statement s=cn.getCn().createStatement();
			ResultSet rs=s.executeQuery(sql);
			while(rs.next()){
				Carrera c=new Carrera();
				c.setId(rs.getInt("idCarrera"));
				c.setNombre(rs.getString("nombre"));
				lista.add(c);
			}
			rs.close();
			s.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return lista;
	}

}
