/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logics;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author genyu
 */

public class DbConnection {
    
    public String user = "uzirxjo3j8nggud8";
    public String pass = "fbyOEDeYL5UhyCX6elHk";
    public String host = "b9bgea7l32gbp2xyzlw6-mysql.services.clever-cloud.com";
    public String port = "3306";
    public String dbName = "b9bgea7l32gbp2xyzlw6";
    public String url = "jdbc:mysql://"+host+":"+port+"/"+dbName;
    
    
    Connection conn = null;
    
    public DbConnection(){
        
        System.out.println("");
        
        try{
            Class.forName("org.gjt.mm.mysql.Driver");
            
           conn = DriverManager.getConnection(url,user,pass); 
            
            System.out.println("conn:"+conn);
            
            if(conn != null){
                
                System.out.println("Connection database ["+ conn + "] OK");
            }
            
        }catch(ClassNotFoundException | SQLException e){ 
             System.out.println("Excepcion conexion: " + e.getMessage());
        }
        
    }
    
    public Connection getConnection(){
        return conn;
    }
    
    
    public void disconnect(){
        System.out.println("Clossing database: ["+conn+"] OK");
        if(conn != null){
            try {
                conn.close();
            }catch(Exception e){
                System.out.println(e);
            }
        }
    }
    
        
}
