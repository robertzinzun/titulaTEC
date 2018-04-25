package datos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
	Connection cn;
	String url="jdbc:mysql://localhost:3306/titulaciones";
	public ConexionBD() {
		try{
			 Class.forName("com.mysql.jdbc.Driver").
			 newInstance();
			cn=DriverManager.getConnection(url,"root","root");
		}
		catch(SQLException e){
			System.out.println("Error al conectar con la BD"+
				e.getMessage());
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getCn(){
		return cn;
	}
	public void cerrar(){
		try{
			cn.close();
		}
		catch(SQLException e){
			System.out.println("Error al cerrar la BD"+
			e.getMessage());
		}
	}
}
