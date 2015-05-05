/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mechanics;

import java.util.ArrayList;

/**
 *
 * @author thinkredstone
 */
public class Answer {

    protected final String answer;
    protected ArrayList<User> gusssers = new ArrayList<>();
    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Answer(String answer) {
        this.answer = answer;
    }

    public String getAnswer() {
        return answer;
    }

    public ArrayList<User> getGusssers() {
        return gusssers;
    }

    public void setGusssers(ArrayList<User> gusssers) {
        this.gusssers = gusssers;
    }

    public void addGussser(User userName) {
        this.gusssers.add(userName);
    }
    
    public void scoreGussers(){
        for(User u : gusssers){
//            a non-UserAnswer is always the right answer
            u.addScore(vars.Vars.SCORE_FOR_RIGHT_ANSWER);
        }
    }

}
