<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
    <title>Posted Comments</title>
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
        <a href="home.jsp"><img class="displayed" src="images/Rx.png" alt="Rx emblem"></a>
        <h3 class="header">YOUR COMMENT HAS POSTED SUCCESSFULLY</h3>
    </div> 
        
    <b>your comment:</b>
    
    <%! String opinion = ""; %>
    <% opinion = request.getParameter("content"); %>
    <%= opinion %>
    
    
   
    
    <br />
    <br />
    
    

    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/pharm"
     user="root"  password="Sierra01"/>
 
    <sql:update dataSource="${snapshot}" var="result">
        INSERT INTO comments VALUES (NULL, ?, ?, ?);
        <sql:param value="${param.did}" />
        <sql:param value="${param.content}" />
        <sql:param value="${param.date}" />
    </sql:update>
       
        
       
   
    
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
