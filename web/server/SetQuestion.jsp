<%-- 
    Document   : SetQuestion
    Created on : Apr 28, 2015, 9:52:47 AM
    Author     : thinkredstone
--%>

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
    <body>
        <%
            if (application.getAttribute(Constants.QUESTIONS) == null) {
                QuestionLoader ql = new QuestionLoader();
                application.setAttribute(Constants.QUESTIONS, ql.loadQuestions());
            }
            Set<Question> qs = (Set<Question>) application.getAttribute(Constants.QUESTIONS);
            for (Question q : qs) {
                if (!q.isPlayed()) {
                    q.setPlayed(true);
                    application.setAttribute(Constants.CURRENTQ, q);
                }%>
        <h1><%=q.question%></h1>
        <%
            }
        %>
    </body>
</html>
