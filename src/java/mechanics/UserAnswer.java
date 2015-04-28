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
    private final User username;

    public UserAnswer(String answer, User username) {
        super(answer);
        this.username = username;
    }

    public User getUsername() {
        return username;
    }
    
}
