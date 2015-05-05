<%-- 
    Document   : chooseAnswer
    Created on : May 3, 2015, 2:09:08 PM
    Author     : thinkredstone
--%>

<%@page import="mechanics.User"%>
<%@page import="mechanics.Answer"%>
<%@page import="vars.Vars"%>
<%@page import="mechanics.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose the write answer!</title>
    </head>
    <body>
        <h1>Choose the right answer!</h1>
        <% if (request.getParameter("answer") == null || request.getParameter("answer") == "") {%>
        <form action="chooseAnswer.jsp">
            <input type="number" name="answer" value="" />
            <input type="submit" value="submit"/>
        </form>
        <%} else {
                Question q = (Question) application.getAttribute(Vars.CURRENTQ);
                for (Answer a : q.getAnswers()) {
                    if (a.getId() == Integer.valueOf(request.getParameter("number"))) {
                        a.addGussser((User) session.getAttribute(Vars.USER));
                    }
                }
            }%>
        <script>
            var time = 15;
            function countdown() {
                document.getElementById("time").innerHTML = time;
                time--;
            }
            setInterval(function () {
                countdown();
            }, 1000);
            setTimeout(function () {
                window.location = "SendAnswer.jsp"; //: put redirect loaction
            }
            , (time + 1) * 1000);
        </script>
    </body>
</html>
