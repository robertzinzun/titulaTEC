package datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelo.Usuario;

public class UsuariosDAO {

	public UsuariosDAO() {
		// TODO Auto-generated constructor stu
	}
	public Usuario validar(String user,String pwd){
		String sql="select idUsuario,nombre,clave,email,tipo,estatus "
				+ "from usuarios where nombre=? and clave=? and estatus='A'";
		Usuario u=new Usuario();
		try{
			ConexionBD cn=new ConexionBD();
			PreparedStatement ps=cn.getCn().prepareStatement(sql);
			ps.setString(1,user);
			ps.setString(2, pwd);
			ResultSet rs=ps.executeQuery();
			if(rs.next()){
				u.setId(rs.getInt("idUsuario"));
				u.setNombre(rs.getString("nombre"));
				u.setEmail(rs.getString("email"));
				u.setTipo(rs.getString("tipo"));
				u.setClave(rs.getString("clave"));
				u.setEstatus(rs.getString("estatus"));
			}
			ps.close();
			rs.close();
			cn.cerrar();
		}
		catch(SQLException e){
			System.out.println("Error:"+e.getMessage());
		}
		return u;
	}

}
