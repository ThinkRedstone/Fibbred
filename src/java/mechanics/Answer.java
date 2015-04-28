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
    protected ArrayList<String> gusssers = new ArrayList<>();

    public Answer(String answer) {
        this.answer = answer;
    }

    public String getAnswer() {
        return answer;
    }

    public ArrayList<String> getGusssers() {
        return gusssers;
    }

    public void setGusssers(ArrayList<String> gusssers) {
        this.gusssers = gusssers;
    }
    
    public void addGussser(String userName) {
        this.gusssers.add(userName);
    }
         
}
