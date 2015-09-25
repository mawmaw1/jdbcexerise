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

        <sql:query  var="listCustomers" dataSource="${myDS}">
            SELECT cno,cname,zip FROM customers;

        </sql:query>

        <div align="center">

            <table border = 1>

                <tr>
                    <th>Customer number</th>
                    <th>Customer name</th>
                    <th>Customer zipcode</th>


                </tr>

                <c:forEach var="customer" items="${listCustomers.rows}">

                    <tr>
                        <td><c:out value="${customer.cno}"/></td>
                        <td><c:out value="${customer.cname}"/></td>
                        <td><c:out value="${customer.zip}"/></td> 

                    </tr>
                </c:forEach>
            </table>

        </div>

            <p><a href="reg.jsp">Register new customer here</a></p>
            <p><a href="index.jsp">Back to index</a></p>



    </body>
</html>
