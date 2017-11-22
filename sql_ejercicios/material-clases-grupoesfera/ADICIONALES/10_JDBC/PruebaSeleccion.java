package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class PruebaSeleccion {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
		      // Load the Driver
		      String driver ="com.mysql.jdbc.Driver";
		      Class.forName(driver); //El class loader carga la clase "com.mysql.jdbc.Driver", agregar al buildpath el mysql-connector-java-5.1.16-bin.jar
		      
		      System.out.println("Driver cargado: " + driver);
		      
		      // Create the "url"
		      // assume database server is running on the localhost
		      String url = "jdbc:mysql://localhost:3306/BaseDePruebas";
		      
		      // Connect to the database represented by url
		      // with username public and password public
		      Connection con = DriverManager.getConnection (url, "root", "root");
		      System.out.println("Concetado a: " + url);
		      
		      // Use the Connection to create a Statement object
		      Statement stmt = con.createStatement();
		      
		      
		      // Execute query using Statement, receive the ResultSet
		      String qry ="SELECT * FROM Persona ORDER BY apellido";
		      
		      ResultSet rs = stmt.executeQuery(qry);
		      
		      System.out.println("Query: " + qry);
		      System.out.println("\n Resultado: \n");
		      while (rs.next()) {
		        System.out.println(" ID:\t\t"+
		          rs.getString("id"));
		        System.out.println(" apellido:\t"+
		          rs.getString("apellido"));
		        System.out.println(" idVehiculo:\t" +
		          rs.getString("idVehiculo"));
		        System.out.println("");
		      }
		      rs.close();
		      stmt.close();
		      con.close();
		    } catch (SQLException e) {
		    	e.printStackTrace();
		    } catch (ClassNotFoundException e) {
		    	e.printStackTrace();
		    }
	}

}
