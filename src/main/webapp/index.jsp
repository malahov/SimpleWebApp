<%@page contentType="text/html" %>
<%@ page import="ru.malahov.web.HelloGenerator" %>
<%@ page import="ru.malahov.web.UserHelloGenerator" %>
<%@ page import="java.util.UUID" %>
<%@ page import="java.util.Date" %>

<%!
    private String uuid = UUID.randomUUID().toString();

    private Date createDate = new Date();

%>


<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>SimpleWebApp</title>
</head>
<body>
    <%
    HelloGenerator hg = new UserHelloGenerator();
    %>
    <h1><%= hg.sayHello()%></h1>

    <h2>Your SESSION information</h2>

    <p>
        session = <%= session.getId()%><br/>
    </p>

    <h2>Servlet(JSP) information</h2>

    <p>
        servlet UUID = <%= uuid%><br/>
        servlet createDate = <%= createDate %><br/>
    </p>

    <h2>Thread information</h2>

    <p>
       servlet thread =  <%= Thread.currentThread().getName()%>
    </p>

    <%
    session.invalidate();
    %>

</body>
</html>