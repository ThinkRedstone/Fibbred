/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mechanics;

/**
 *
 * @author thinkredstone
 */
public class UserAnswer extends Answer{
    private final String usename;

    public UserAnswer(String answer, String username) {
        super(answer);
        this.usename = username;
    }

    public String getUsename() {
        return usename;
    }
    
}
