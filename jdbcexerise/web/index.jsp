<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>xxxx</title>
    </head>
    <body>
        <h1>Overview</h1>
        <sql:setDataSource
            var="myDS"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/jdbcexerise"

            user="admin" password="password"
            />

        <sql:query  var="listEmployees" dataSource="${myDS}">
            SELECT eno,ename,zip FROM employees;

        </sql:query>

        <div align="center">
            
            <table border = 1>

                <tr>
                    <th>Employee number</th>
                    <th>Employee name</th>
                    <th>Employee zipcode</th>
                    
                    


                </tr>
                
                <c:forEach var="employee" items="${listEmployees.rows}">
                   
                    <tr>
                        <td><c:out value="${employee.eno}"/></td>
                        <td><c:out value="${employee.ename}"/></td>
                        <td><c:out value="${employee.zip}"/></td> 
                        
                        
                        
                        
                        
                    </tr>
                </c:forEach>
            </table>
                
        </div>





    </body>
</html>
