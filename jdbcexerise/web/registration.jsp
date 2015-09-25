
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String cno = request.getParameter("cno");    
    String cname = request.getParameter("cname");
    String street = request.getParameter("street");
    String zip = request.getParameter("zip");
    String phone = request.getParameter("phone");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcexerise", "admin", "password");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO customers(cno, cname, street, zip, phone) VALUES "
            + "('" + cno + "','" + cname + "','" + street + "','" + zip + "','" + phone + "')");
    
        //session.setAttribute("userid", user);
        response.sendRedirect("Customers.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    
%>
