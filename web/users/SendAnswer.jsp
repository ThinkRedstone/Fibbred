<%-- 
    Document   : SendAnswer
    Created on : Apr 29, 2015, 9:02:11 AM
    Author     : thinkredstone
--%>

<%@page import="mechanics.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mechanics.User"%>
<%@page import="mechanics.UserAnswer"%>
<%@page import="mechanics.Answer"%>
<%@page import="vars.Vars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Answer now!</title>
    </head>
    <body>
        <% if (application.getAttribute(vars.Vars.CURRENTQ) == null) {%>
        <script>
            setTimeout(function () {
                window.location = "SendAnswer.jsp";
            }, 1000)
        </script>
        <%} else {%>
        <%if (request.getParameter("answer") == null || request.getParameter("answer").equals("")) {%>
        <h1>Write your answer!</h1>
        <form action="SendAnswer.jsp">
            <input type="text" name="answer" id="answer" value="Write your answer!" onclick="document.getElementById('answer').value = ''"/>
            <input type="submit" value="Submit" />
        </form>
        <%} else {
                ((Question) application.getAttribute(Vars.CURRENTQ)).addAnswer(new UserAnswer(request.getParameter("answer"), (User) session.getAttribute(Vars.USER)));
            }%>
            <script>
                window.location = "chooseAnswer.jsp"
            </script>
        <%
            }
        %>
    </body>
</html>
