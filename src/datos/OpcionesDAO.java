package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.sql.PreparedStatement;

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
	public boolean insertar(Opcion o){
		String query="insert into opciones values(null,?,?)";
		boolean ban=false;
		try{
			ConexionBD con=new ConexionBD();
			PreparedStatement ps=con.getCn().prepareStatement(query);
			ps.setString(1, o.getNombre());
			ps.setString(2, o.getDescripcion());
			ps.execute();
			ps.close();
			con.cerrar();
			ban=true;
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return ban;
	}
	public Opcion consultaOpcion(int id){
		String sql="select idOpcion,nombre,descripcion "
				+ "from opciones where idOpcion=?";
		Opcion o=new Opcion();
		try{
			ConexionBD con=new ConexionBD();
			PreparedStatement sentencia=con.getCn().prepareStatement(sql);
			sentencia.setInt(1, id);
			ResultSet rs=sentencia.executeQuery();
			if(rs.next()){
				o.setId(rs.getInt("idOpcion"));
				o.setNombre(rs.getString("nombre"));
				o.setDescripcion(rs.getString("descripcion"));	
			}
			sentencia.close();
			rs.close();
			con.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error al ejecutar la consulta"
					+e.getMessage());
		}
		return o;
	}
	public boolean actualizar(Opcion o){
		String query="update opciones set nombre=?, descripcion=? where idOpcion=?";
		boolean ban=false;
		try{
			ConexionBD con=new ConexionBD();
			PreparedStatement ps=con.getCn().prepareStatement(query);
			ps.setString(1, o.getNombre());
			ps.setString(2, o.getDescripcion());
			ps.setInt(3, o.getId());
			ps.execute();
			ps.close();
			con.cerrar();
			ban=true;
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return ban;
	}
	public boolean eliminar(int id){
		String query="delete from opciones where idOpcion=?";
		boolean ban=false;
		try{
			ConexionBD con=new ConexionBD();
			PreparedStatement ps=con.getCn().prepareStatement(query);
			ps.setInt(1, id);
			ps.execute();
			ps.close();
			con.cerrar();
			ban=true;
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return ban;
	}
	public int consultaPaginas(){
		String sql="select ceil(count(*)/10) paginas from opciones";
		int paginas=0;
		try{
			ConexionBD cn=new ConexionBD();
			Statement s=cn.getCn().createStatement();
			ResultSet rs=s.executeQuery(sql);
			if(rs.next()){
				paginas=rs.getInt("paginas");
			}
			rs.close();
			s.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return paginas;
	}
	public ArrayList<Opcion> consultaOpcionesPorPagina(int page){
		String sql="select idOpcion,nombre,descripcion "
				+ "from opciones"
				+" limit "+(page-1)*10+",10";
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
