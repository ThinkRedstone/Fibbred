/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package loading;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;
import mechanics.Answer;
import mechanics.Question;

/**
 *
 * @author thinkredstone
 */
public class QuestionLoader {

    private Scanner s;

    public QuestionLoader() throws FileNotFoundException {
        s = new Scanner(new File("/home/thinkredstone/ques.txt"));//TODO: use a real file
    }

    public Set<Question> loadQuestions() {
        Set<Question> questions = new HashSet<>();
        while (s.hasNextLine()) {
            questions.add(new Question(s.nextLine(), new Answer(s.nextLine())));
        }
        return questions;
    }

}
