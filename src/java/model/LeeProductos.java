/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


/**
 *
 * @author Cristian Campos, David Orellana
 */
public class LeeProductos {
    public LeeProductos() {
    }
    public ArrayList<Producto> consultar(){
    

        Connection conn = null;
        Statement stm;
        ResultSet rs; 
        
        ArrayList<Producto> listaProductos = new ArrayList<Producto>();
        
        try{
            conn = ConexionBD.abrir();
            stm = conn.createStatement();
            rs = stm.executeQuery("select * from Producto");
            
            if(!rs.next()){
                System.out.println(" No se encontraron registros");
                ConexionBD.cerrar();
                return null;
            }else{
                do {
                    int clave = rs.getInt("clave");
                    String nombre = rs.getString("nombre");
                    Double precio = rs.getDouble("precio");
                    int cantidad = rs.getInt("cantidad");
                    Producto productoEncontrado = new Producto(clave, nombre, precio, cantidad);
                    listaProductos.add(productoEncontrado);
                } while (rs.next());
                ConexionBD.cerrar();
                return listaProductos;          
            }

        }catch(Exception e){
            System.out.println("error en la BBDD");
            e.printStackTrace();
            return null;
        }
        

        
    }


}
