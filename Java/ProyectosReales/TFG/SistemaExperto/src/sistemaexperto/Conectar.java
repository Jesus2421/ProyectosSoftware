package sistemaexperto;

import java.sql.*;

public class Conectar {
    private static Connection C;
    private  String driver = "com.mysql.jdbc.Driver";
    private  String user = "root";
    private  String password = "";
    private  String url = "jdbc:mysql://localhost/optica?user=root&password=";
    public Conectar() {
        C = null;
        try{
         Class.forName(driver);
         C = DriverManager.getConnection(url,user,password);
         if (C != null){
             System.out.print("Conexion establecida...");
         }
         else {
             
         }
        } catch (ClassNotFoundException | SQLException e){
            System.out.print("Conexion Fallida:" + e);
        }
    }
       public Connection getConnection(){
        return C;
    }
     public void desconectar(){
         C = null;
          if (C == null){
             System.out.print("se ha desconectado");
         }
     }  

    }
