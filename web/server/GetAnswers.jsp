<%-- 
    Document   : GetAnswers
    Created on : May 3, 2015, 12:51:29 PM
    Author     : thinkredstone
--%>

<%@page import="java.util.Iterator"%>
<%@page import="mechanics.Answer"%>
<%@page import="vars.Vars"%>
<%@page import="mechanics.Question"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose an answer!</title>
    </head>
    <body>
        <h1>Choose an answer!</h1>
        <table>
            <%
                Question q = (Question) application.getAttribute(Vars.CURRENTQ);
                int amountPerLine = 3;
                int counter = 0;
                Iterator<Answer> it = q.getAnswers().iterator();
                while (it.hasNext()) {
            %>
            <tr>
                <%
                    for (int i = 0; i < amountPerLine; i++) {
                        counter++;
                        if (it.hasNext()) {
                %>
                <td><%=(counter + it.next().getAnswer())%></td>
                <%
                } else {
                %>
                <td></td>
                <%
                        }
                    }
                %>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
