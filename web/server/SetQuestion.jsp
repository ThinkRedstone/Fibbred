<%-- 
    Document   : SetQuestion
    Created on : Apr 28, 2015, 9:52:47 AM
    Author     : thinkredstone
--%>

<%@page import="vars.Vars"%>
<%@page import="java.util.Set"%>
<%@page import="mechanics.Question"%>
<%@page import="loading.QuestionLoader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body style="text-align: center;direction: rtl">
        <%
            if (application.getAttribute(Vars.QUESTIONS) == null) {
                QuestionLoader ql = new QuestionLoader();
                application.setAttribute(Vars.QUESTIONS, ql.loadQuestions());
            }
            Set<Question> qs = (Set<Question>) application.getAttribute(Vars.QUESTIONS);
            for (Question q : qs) {
                if (!q.isPlayed()) {
                    q.setPlayed(true);
                    application.setAttribute(Vars.CURRENTQ, q);
                    break;
                }
        %> 
        <% }%>
        <h1><%=((Question) application.getAttribute(vars.Vars.CURRENTQ)).question%></h1> 
        <div id="time" style="text-align: center"></div>
        <script>
            var time = 60;
            function countdown() {
                document.getElementById("time").innerHTML = time;
                time--;
            }
            setInterval(function () {
                countdown();
            }, 1000);
            setTimeout(function () {
                window.location = "GetAnswers.jsp";
            }
            , (time + 1) * 1000);
        </script>
    </body>
</html>
