/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package process;

import com.google.gson.Gson;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.util.Iterator;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import static process.dbConnect.con;
import static process.dbConnect.fifa18DB;


/**
 *
 * @author Bernard Kapinda
 */
public class convert_jsonteams_to_java {

public static void main(String args[])    {
    

deSerializeTeams();

}




//
private static void deSerializeTeams(){

    fifa18DB();
      
//=================================================================================================
//create a JSON parser object
//=================================================================================================
 JSONParser parser = new JSONParser();

        try {

            //=================================================================================================
            //create a Java object to hold json data as an object
            //=================================================================================================
            Object obj = parser.parse(new FileReader("C:\\teams.json"));

            
            //=================================================================================================
            //create a JSONArray object called jsonArray to hold json object obj & cast it to (JSONArray)
            //=================================================================================================
            JSONArray jsonArray = (JSONArray) obj;
            String team = jsonArray.toString();
           // System.out.println(jsonArray);
      
            //=================================================================================================
            //create a Gson object called gson to be used to convert json data to java object
            //=================================================================================================
            Gson gson = new Gson();
            
            
            //====================================================================================================================
            //create an array object called tojava of the type teams to hold json data that has been converted to java following 
            //the format specified in the teams class
            //====================================================================================================================
            teams[] tojava = gson.fromJson(team, teams[].class);
            
            
            //===================================================================================================================================
            //loop  through the data in the array [tojava], printing records at each index using the value of i as i increments in each iteration
            //===================================================================================================================================
            try{
             PreparedStatement st1 =con.prepareStatement("truncate team;");
                      st1.executeQuery();
            }catch(Exception e){}
            
            for(int i = 0; i < tojava.length; i++){
                try{
                   
PreparedStatement st =con.prepareStatement("insert into team values(?,?,?,?,?,?)");
 
 
                    int id = tojava[i].getId();
                    String country = tojava[i].getCountry();
                    String alternate_name = tojava[i].getAlternate_name();
                    String fifa_code = tojava[i].getFifa_code();
                    int group_id = tojava[i].getGroup_id();
                    String group_letter = tojava[i].getGroup_letter();
                    
                    st.setInt(1,id); 
                    st.setString(2,country); 
                    st.setString(3,alternate_name); 
                    st.setString(4,fifa_code); 
                    st.setInt(5,group_id); 
                    st.setString(6,group_letter);
                  
                    st.executeUpdate();
                    System.out.println("Teams Updated!");
                }catch(Exception e){}
}
           

             //catch errors
            
            

        } catch (FileNotFoundException e) {
            System.out.println("Please! Put your json file containing teams data in the C: directory and rename it to teams.json and Try Agian");
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
 
}
}
