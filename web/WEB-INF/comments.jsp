<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>COMMENTS table</title>
    <link rel="stylesheet" type="text/css" href="styles/main.css"/>
</head>
<body>
    <div align="left">
    <a href="contact"><font color="black"><b>Contact</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    <a href="faq"><font color="black"><b>FAQ</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="drugs"><font color="black"><b>Database</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    <div align="right">
        <form action="/TEST/search" method="post">
        <input type="text" name="search" size="40" placeholder="search database here"><input type="submit" form="nameform" value="search"/></form>
    </div>
    <div>
        <a href=" "><img class="displayed" src="images/Rx.png" alt="Rx emblem"></a>
        <h3 class="header">Comments</h3>
    </div>
    
    <%! String did = ""; %>
    <% did = request.getParameter("did"); %>
    <%! String file_name = ""; %>
    <% file_name = request.getParameter("image_file"); %>

    <h2><IMG SRC="images/<%= file_name %>"><IMG SRC="images/<%= file_name %>"><IMG SRC="images/<%= file_name %>"></h2>
           
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/pharm"
     user="root"  password="Sierra01"/>
 
    <sql:query dataSource="${snapshot}" var="result">
        SELECT * FROM comments WHERE drug_id = ?
        <sql:param value="${param.did}"></sql:param>
    </sql:query>
    
    <table border="1" width="100%">
    
    
        
    <tr>
        <th>comments</th>
        <th>date</th>
    </tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.opinion}" escapeXml="true" /></td>
   <td>
       <c:set var="d_date" value="${row.date}" />
       <p><fmt:formatDate type="both" dateStyle="long" timeStyle="medium" value="${d_date}" /></p>
   </td>
</tr>
</c:forEach>
</table>

<hr size="30">

<form method="POST" action="post_comment.jsp">
    <input type="hidden" name="did" value=<%= did %> />
    <textarea name="content" cols="80" rows="8"></textarea>
    <input type="submit" value="Enter Comment"/>
</form>    
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        
</body>

 <footer>Drug Feedback DB maintained by and copyrighted&reg; - 2015
 <br/><a href="josecarlos.cavazos@g.austincc.edu" target="new">J.C. Cavazos</a>
 </footer>

<h3 class="footer">Prescription Drug Feedback Database&reg;</h3>
       
    
</html>
