<%-- 
    Document   : login
    Created on : Apr 28, 2015, 11:14:55 AM
    Author     : thinkredstone
--%>

<%@page import="mechanics.User"%>
<%@page import="vars.Vars"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <% if (request.getParameter("username") == null || request.getParameter("username").equals("")) {%>
        <form action="login.jsp">
            <input type="text" name="username" value="" />
            <input type="submit" value="Enter" />
        </form>
        <%} else {
            session.setAttribute(Vars.USER, new User(request.getParameter("username")));
        %>
        <script>
            window.location = "";//TODO: redirect
        </script>
        
        <%}%>
    </body>
</html>