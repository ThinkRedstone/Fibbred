<%-- 
    Document   : ScoreAnswers
    Created on : May 5, 2015, 7:44:55 PM
    Author     : thinkredstone
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mechanics.User"%>
<%@page import="mechanics.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Score</title>
    </head>
    <body style="text-align: center;direction: rtl">
        <h1>The score: </h1>
        <table>
            <%
                ((Question) application.getAttribute(vars.Vars.CURRENTQ)).scoreAnswers();
                for (User u : (ArrayList<User>) application.getAttribute(vars.Vars.AUSERS)) {
            %>
            <tr>
                <td><%=u.username%></td>
                <td><%=u.getScore()%></td>
            </tr>
            <%
                }
                application.setAttribute(vars.Vars.CURRENTQ, null);
            %>
        </table>
        <% if (request.getParameter("final") != null) {%>
        <script>
            var time = 15;
            function countdown() {
//                    document.getElementById("time").innerHTML = time;
                time--;
            }
            setInterval(function () {
                countdown();
            }, 1000);
            setTimeout(function () {
                window.location = "SetQuestion.jsp"; 
            }
            , (time + 1) * 1000);
        </script>
        <%}%>
    </body>
</html>
