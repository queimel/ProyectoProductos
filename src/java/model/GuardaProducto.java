/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author cristian.campos
 */
public class GuardaProducto {
    
    public boolean registrar(int clave, String nombre, Double precio, int cant){
        Connection conn = null;
        Statement stm;
        int resultUpdate = 0;
        
        try{
            conn = ConexionBD.abrir();
            stm = conn.createStatement();
            resultUpdate = stm.executeUpdate("INSERT INTO Producto VALUES("+clave+",'"+ nombre + "'," + precio+"," +cant+ ");");
            if( resultUpdate !=0){
                ConexionBD.cerrar();
                return true;
            }else{
                ConexionBD.cerrar();
                return false;
            }
        }catch(Exception e){
            System.out.println("error en la BBDD");
            e.printStackTrace();
            return false;
        }
    }
}
