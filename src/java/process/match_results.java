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
public class match_results {
 public   String  country,
          alternate_name,
            fifa_code,
            group_letter;
    int     id,
            group_id,
            wins,
            draws,
            losses,
            games_played,
            points,
            goals_for,
            goals_against,
            goal_differential;

    public match_results(String country, String alternate_name, String fifa_code, String group_letter, int id, int group_id, int wins, int draws, int losses, int games_played, int points, int goals_for, int goals_against, int goal_differential) {
        this.country = country;
        this.alternate_name = alternate_name;
        this.fifa_code = fifa_code;
        this.group_letter = group_letter;
        this.id = id;
        this.group_id = group_id;
        this.wins = wins;
        this.draws = draws;
        this.losses = losses;
        this.games_played = games_played;
        this.points = points;
        this.goals_for = goals_for;
        this.goals_against = goals_against;
        this.goal_differential = goal_differential;
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

    public void setWins(int wins) {
        this.wins = wins;
    }

    public void setDraws(int draws) {
        this.draws = draws;
    }

    public void setLosses(int losses) {
        this.losses = losses;
    }

    public void setGames_played(int games_played) {
        this.games_played = games_played;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public void setGoals_for(int goals_for) {
        this.goals_for = goals_for;
    }

    public void setGoals_against(int goals_against) {
        this.goals_against = goals_against;
    }

    public void setGoal_differential(int goal_differential) {
        this.goal_differential = goal_differential;
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

    public int getWins() {
        return wins;
    }

    public int getDraws() {
        return draws;
    }

    public int getLosses() {
        return losses;
    }

    public int getGames_played() {
        return games_played;
    }

    public int getPoints() {
        return points;
    }

    public int getGoals_for() {
        return goals_for;
    }

    public int getGoals_against() {
        return goals_against;
    }

    public int getGoal_differential() {
        return goal_differential;
    }
    
    
    
}
