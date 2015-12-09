<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
    <title>Search</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles/main.css"/>
    </head>
    <body>
    <div align="left">
    <a href="contact"><font color="black"><b>Contact</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    <a href="faq"><font color="black"><b>FAQ</b></font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
    <a href="drugs"><font color="black"><b>Database</b></font></a>
    </div>
    <div align="right">
        <form action="/TEST/search" method="post">
        <input type="text" name="search" size="40" placeholder="search database here"><input type="submit" form="nameform" value="search"/></form>
    </div>
    <div>
        <a href=" "><img class="displayed" src="images/Rx.png" alt="Rx emblem"></a>
        <h3 class="header">SEARCH RESULTS</h3>
    </div> 
    
    <body>
        <h3>you searched for: <c:out value="${search}"/></h3>
        
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/pharm"
     user="root"  password="Sierra01"/>
       
    <sql:query dataSource="${snapshot}" var="result">
        SELECT * FROM drugs where name = ?
        <sql:param value="${search}"></sql:param>
    </sql:query>
        
    <c:forEach var="row" items="${result.rows}">
        <h2><a href="comments?did=${row.id}&image_file=${row.image}"> ${row.name} </a></h2> </br>
    </c:forEach>   
    
    
    </body>
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
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
        </br>
    <footer>
    Drug Feedback DB maintained by and copyrighted&reg; - 2015
    <br/><a href="josecarlos.cavazos@g.austincc.edu" target="new">J.C. Cavazos</a>
    </footer>
        
        <h3 class="footer">Prescription Drug Feedback Database&reg;</h3>
</html>
