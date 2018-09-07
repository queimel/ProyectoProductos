/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author Cristian Campos, David Orellana
 */
public class ConexionBD {
    public static Connection conn;
    private static String bd = "productos";
    public static String usuario = "root";
    public static String passw = "";
    public static String url = "jdbc:mysql://localhost:3306/"+bd;
    
    public static Connection abrir() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, usuario, passw);

        } catch (Exception e) {
            System.out.println("Error en la conexion...");
            e.printStackTrace();
        }
        return conn;
    }
    
    public static void cerrar(){
        try{
            if(conn != null){
                conn.close();
            }
        } catch (Exception e){
            System.out.println("Error: No se logro cerrar conexion:\n"+e);
        }
    }
}
