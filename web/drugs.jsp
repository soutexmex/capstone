<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>DRUGS table</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css"/>
</head>
<body>
 
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/pharm"
     user="root"  password="Sierra01"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from drugs;
</sql:query>
 
<table border="1" width="100%">
<tr>
   <th>drug database ID</th>
   <th>drug name</th>
   <th>drug description</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.description}"/></td>
</tr>
</c:forEach>
</table>
    <h3 class="footer">Copyright 2015 Prescription Drug Feedback DB</h3>
</body>
</html>