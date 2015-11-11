<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>COMMENTS table</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css"/>
</head>
<body>
           
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/pharm"
     user="root"  password="Sierra01"/>
 
    <sql:query dataSource="${snapshot}" var="result">
        SELECT * FROM comments WHERE drug_id = ?
        <sql:param value="${param.did}">
        </sql:param>
    </sql:query>
 
    <table border="1" width="100%">
    <tr>
        <th>id</th>
        <th>drug_id</th>
        <th>opinion</th>
    </tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.id}"/></td>
   <td><c:out value="${row.drug_id}"/></td>
   <td><c:out value="${row.opinion}"/></td>
</tr>
</c:forEach>
</table>

<hr size="30">
        
<%! String did = ""; %>
<% did = request.getParameter("did"); %>

<form method="POST" action="post_comment.jsp">
    <input type="hidden" name="did" value=<%= did %> />
    <textarea name="content" cols="80" rows="8">
    </textarea>
    <input type="submit" value="Input Opinion"/>
</form>        
        
<h3 class="footer">Prescription Drug Feedback Database&reg; - 2015</h3>


</body>  
       
    
</html>
