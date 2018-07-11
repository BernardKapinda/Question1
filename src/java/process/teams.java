/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package process;

/**
 *
 * @author Bernard Kapinda
 */
public class teams {
    String  country,
            alternate_name,
            fifa_code,
            group_letter;
    int     id,
            group_id;
    
    
    public teams (int id,String country, String alternate_name, String fifa_code,int group_id, String group_letter){
    this.id = id;
    this.country = country;
    this.alternate_name  = alternate_name;
    this.fifa_code = fifa_code;
    this.group_id = group_id;
    this.group_letter = group_letter;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public void setAlternate_name(String alternate_name) {
        this.alternate_name = alternate_name;
    }

    public void setFifa_code(String fifa_code) {
        this.fifa_code = fifa_code;
    }

    public void setGroup_letter(String group_letter) {
        this.group_letter = group_letter;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public String getCountry() {
        return country;
    }

    public String getAlternate_name() {
        return alternate_name;
    }

    public String getFifa_code() {
        return fifa_code;
    }

    public String getGroup_letter() {
        return group_letter;
    }

    public int getId() {
        return id;
    }

    public int getGroup_id() {
        return group_id;
    }
    
    
}
