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
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
public class convert_jsonmatch_results_to_java {

public static void main(String args[])    {

  
  
 deSerializeMatch_Results();

}




//
public static void deSerializeMatch_Results(){

    fifa18DB();
    
//=================================================================================================
//create a JSON parser object
//=================================================================================================
 JSONParser parser = new JSONParser();

        try {

            //=================================================================================================
            //create an object to hold json data as an object
            //=================================================================================================
            Object obj = parser.parse(new FileReader("C:\\match_results.json"));

            
            //=================================================================================================
            //create a JSONArray object called jsonArray to hold json object obj & cast it to (JSONArray)
            //=================================================================================================
            JSONArray jsonArray = (JSONArray) obj;
            String results = jsonArray.toString();
           // System.out.println(jsonArray);
      
            //=================================================================================================
            //create a Gson object called gson to be used to convert json data to java object
            //=================================================================================================
            Gson gson = new Gson();
            
            
            //====================================================================================================================
            //create an array object called tojava of the type teams to hold json data that has been converted to java following 
            //the format specified in the teams class
            //====================================================================================================================
            match_results[] tojava = gson.fromJson(results, match_results[].class);
            
            
            //===================================================================================================================================
            //loop  through the data in the array [tojava], printing records at each index using the value of i as i increments in each iteration
            //===================================================================================================================================
            try{
             PreparedStatement st1 =con.prepareStatement("truncate match_results;");
                      st1.executeQuery();
            }catch(Exception e){}
            
            for(int i = 0; i < tojava.length; i++){
                try{
                   
PreparedStatement st =con.prepareStatement("insert into match_results values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
 
             int id = tojava[i].getId();
                String country = tojava[i].getCountry();
                String alternate_name = tojava[i].getAlternate_name();
                String fifa_code = tojava[i].getFifa_code();
                int group_id = tojava[i].getGroup_id();
                String group_letter = tojava[i].getGroup_letter();
                int wins = tojava[i].getWins();
                int draws = tojava[i].getDraws();
                int losses = tojava[i].getLosses();
                int games_played = tojava[i].getGames_played();
                int points = tojava[i].getPoints();
                int goals_for = tojava[i].getGoals_for();
                int goals_against = tojava[i].getGoals_against();
                int goal_differential = tojava[i].getGoal_differential();
                
                    st.setInt(1,id); 
                    st.setString(2,country); 
                    st.setString(3,alternate_name); 
                    st.setString(4,fifa_code); 
                    st.setInt(5,group_id); 
                    st.setString(6,group_letter);
                    st.setInt(7,wins);
                    st.setInt(8,draws);
                    st.setInt(9,losses);
                    st.setInt(10,games_played);
                    st.setInt(11,points);
                    st.setInt(12,goals_for);
                    st.setInt(13,goals_against);
                    st.setInt(14,goal_differential);
                    st.executeUpdate();
                    System.out.println("Match Results Updated!");
                }catch(Exception e){
                }
}
           

             //catch errors
            
            

        } catch (FileNotFoundException e) {
           System.out.println("Please! Put your json file containing Macth Results data in the C: directory and rename it to match_results.json and Try Agian");
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
 
}
}
