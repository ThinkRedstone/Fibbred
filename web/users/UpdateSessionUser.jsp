<%-- 
    Document   : UpdateSessionUser
    Created on : Apr 29, 2015, 9:31:25 AM
    Author     : thinkredstone
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="mechanics.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            for(User u: (ArrayList<User>) application.getAttribute(vars.Vars.AUSERS)){
               if(u.username.equals(session.getAttribute(vars.Vars.USER)))
                   ((User)session.getAttribute(vars.Vars.USER)).setScore(u.getScore());
            }%>
    </body>
</html>
