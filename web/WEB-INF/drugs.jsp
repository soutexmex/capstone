<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
    <title>drugs database</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
    <div align="left">
    <a href="contact"><font color="black"><b>Contact</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="faq"><font color="black"><b>FAQ</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    <div align="right">
        <form action="/TEST/search" method="post">
        <input type="text" name="search" size="40" placeholder="search database here"><input type="submit" form="nameform" value="search"/></form>
    </div>
    <div>
        <a href=" "><img class="displayed" src="images/Rx.png" alt="Rx emblem"></a>
        <h3 class="header">Database listings</h3>
    </div>
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
   <th>drug name</th>
   <th>drug description</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.description}"/></td>
</tr>
</c:forEach>
</table>

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
    <footer>
    Drug Feedback DB maintained by and copyrighted&reg; - 2015
    </br><a href="josecarlos.cavazos@g.austincc.edu" target="new">J.C. Cavazos</a>
    </footer>
    <h3 class="footer">Copyright 2015 Prescription Drug Feedback DB</h3>

</html>