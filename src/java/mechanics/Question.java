/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mechanics;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author thinkredstone
 */
public class Question {

    public final String question;
    private final Answer rightAnswer;
    private Set<UserAnswer> userAnswers;
    private boolean played = false;
    private boolean ready = false;

    public Question(String question, Answer rightAnswer, Set<UserAnswer> userAnswers) {
        this.question = question;
        this.rightAnswer = rightAnswer;
        this.userAnswers = userAnswers;
        checkAnsewers();
    }

    public Question(String question, Answer rightAnswer) {
        userAnswers = new HashSet<>();
        this.question = question;
        this.rightAnswer = rightAnswer;
    }

    public void addAnswer(UserAnswer answer) {
        userAnswers.add(answer);
        checkAnsewers();
    }

    private void checkAnsewers() {
        for (UserAnswer a : userAnswers) {
            if (a.answer.equals(rightAnswer.answer)) {
                this.userAnswers.remove(a);
            }
        }
    }

    public Set<Answer> getAnswers() {
        HashSet<Answer> answers = new HashSet<>(userAnswers);
        answers.add(rightAnswer);
        return answers;
    }

    public void scoreAnswers() {
        for (Answer a : getAnswers()) {
            if (a.getAnswer().equals(rightAnswer.getAnswer())) {
                rightAnswer.setGusssers(a.getGusssers());
            } else {
                for (Answer ua : userAnswers) {
                    if (ua.answer.equals(a)) {
                        ua.setGusssers(a.getGusssers());
                    }
                }
            }
            a.scoreGussers();
        }
    }

    public boolean isPlayed() {
        return played;
    }

    public void setPlayed(boolean played) {
        this.played = played;
    }

    public boolean isReady() {
        return ready;
    }

    public void setReady(boolean ready) {
        this.ready = ready;
    }
    

}
