package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import modelo.Opcion;
import java.util.*;



public class OpcionesDAO {

	public OpcionesDAO() {
		// TODO Auto-generated constructor stub
	}
	public String consultaGeneral(){
		String sql="select idOpcion,nombre,descripcion "
				+ "from opciones";
		JSONArray array=new JSONArray();
		try{
			ConexionBD con=new ConexionBD();
			Statement sentencia=con.getCn().createStatement();
			ResultSet rs=sentencia.executeQuery(sql);
			while(rs.next()){
				JSONObject json=new JSONObject();
				json.put("id", rs.getInt("idOpcion"));
				json.put("nombre", rs.getString("nombre"));
				json.put("descripcion", 
				rs.getString("descripcion"));
				array.add(json);	
			}
			sentencia.close();
			rs.close();
			con.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error al ejecutar la consulta"
					+e.getMessage());
		}
		System.out.println(array.toString());
		return array.toString();
	}
	public ArrayList<Opcion> consultaOpciones(){
		String sql="select idOpcion,nombre,descripcion "
				+ "from opciones";
		ArrayList<Opcion> array=new ArrayList<Opcion>();
		try{
			ConexionBD con=new ConexionBD();
			Statement sentencia=con.getCn().createStatement();
			ResultSet rs=sentencia.executeQuery(sql);
			while(rs.next()){
				Opcion o=new Opcion();
				o.setId(rs.getInt("idOpcion"));
				o.setNombre(rs.getString("nombre"));
				o.setDescripcion(rs.getString("descripcion"));
				array.add(o);	
			}
			sentencia.close();
			rs.close();
			con.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error al ejecutar la consulta"
					+e.getMessage());
		}
		return array;
	}

}
