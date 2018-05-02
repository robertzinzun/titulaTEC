package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import modelo.Aula;

public class AulaDAO {

	public AulaDAO() {
		// TODO Auto-generated constructor stub
	}
	public String consultaGeneral(){
		String query="select idAula,nombre,ubicacion from aulas";
		StringBuilder arrayjson=new StringBuilder("[");
		JSONArray array=new JSONArray();
		try{
			ConexionBD cn=new ConexionBD();
			Statement s=cn.getCn().createStatement();
			ResultSet rs=s.executeQuery(query);
			while(rs.next()){
				Aula a=new Aula();
				JSONObject json=new JSONObject();
				json.put("id", rs.getInt("idAula"));
				json.put("nombre", rs.getString("nombre"));
				json.put("ubicacion", rs.getString("ubicacion"));
				array.add(json);
				
			}
			rs.close();
			s.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error al ejecutar la consulta:"+query);
			System.out.println(e.getMessage());
		}
		
		return array.toString();
	}
	public ArrayList<Aula> consultaAulas(){
		String query="select idAula,nombre,ubicacion from aulas";
		ArrayList lista=new ArrayList<Aula>();
		try{
			ConexionBD cn=new ConexionBD();
			Statement s=cn.getCn().createStatement();
			ResultSet rs=s.executeQuery(query);
			while(rs.next()){
				Aula a=new Aula();
				a.setId(rs.getInt("idAula"));
				a.setNombre(rs.getString("nombre"));
				a.setUbicacion(rs.getString("ubicacion"));
				lista.add(a);
				
			}
			rs.close();
			s.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error al ejecutar la consulta:"+query);
			System.out.println(e.getMessage());
		}
		
		return lista;
	}

}
