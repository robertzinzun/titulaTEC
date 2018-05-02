package datos;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AlumnosDAO {

	public AlumnosDAO() {
		// TODO Auto-generated constructor stub
	}
	public String consultaAlumnos(int idCarrera){
		String sql="select nocontrol,nombre,sexo,telefono from alumnos where idcarrera=?";
		JSONArray array=new JSONArray();
		try{
			ConexionBD cn=new ConexionBD();
			PreparedStatement ps=cn.getCn().prepareStatement(sql);
			ps.setInt(1, idCarrera);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				JSONObject json=new JSONObject();
				json.put("nc", rs.getString("nocontrol"));
				json.put("nombre", rs.getString("nombre"));
				json.put("sexo", rs.getString("sexo"));
				json.put("tel", rs.getString("telefono"));
				array.add(json);
			}
			rs.close();
			ps.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return array.toString();
	}

}
