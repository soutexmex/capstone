<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Comments</title>
    </head>
    <body>
    <b>Opinion:</b>
    
    <%! String opinion = ""; %>
    <%--    <% opinion = request.getParameter("content"); %>
    <%= opinion %>
    <--%>
    
    <%= request.getParameter("did") %>
    <%= request.getParameter("content") %>
    <H3> INSERT SUCCESS </H3>
    <A href="index.html"> Go To Home </A>

    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/pharm"
     user="root"  password="Sierra01"/>
 
    <sql:update dataSource="${snapshot}" var="result">
        INSERT INTO comments VALUES (NULL, ?, ?);
        <sql:param value="${param.did}" />
        <sql:param value="${param.content}" />
    </sql:update>
        
    </body>
</html>
