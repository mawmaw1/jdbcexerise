
<%@page import="com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String cno = request.getParameter("cno");    
    String cname = request.getParameter("cname");
    String street = request.getParameter("street");
    String zip = request.getParameter("zip");
    String phone = request.getParameter("phone");
    Connection con = null;
    Statement st = null;
   try{
       
   
    
    Class.forName("com.mysql.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcexerise", "admin", "password");
     st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO customers(cno, cname, street, zip, phone) VALUES "
            + "('" + cno + "','" + cname + "','" + street + "','" + zip + "','" + phone + "')");
    
    
    }
   catch (MySQLIntegrityConstraintViolationException e) {
            System.out.println("Primary key already in use, use another key");
             st.close();
            con.close();
            
            
   }
        //session.setAttribute("userid", user);
        response.sendRedirect("Customers.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    
%>
