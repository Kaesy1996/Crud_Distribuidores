/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package crud_distribuidores;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author kaesy
 */
public class conexionMysql {
    Connection cn;
    
    public Connection conectar(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/curd_distribuidores","root","");
            System.out.println("Conectado");
        }catch(Exception e){
            System.out.println("Error"+e);
        }
        return cn;
    }
}
