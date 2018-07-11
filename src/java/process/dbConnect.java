/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package process;

import java.sql.*;

/**
 *
 * @author Bernard Kapinda
 */
public class dbConnect {
    
   static Connection con; 
   
    public static void fifa18DB(){
        try{
          
      Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fifa18?" + "user=root&password=20152016"); 
        
        }catch(Exception e){
        
        }
        }
}
