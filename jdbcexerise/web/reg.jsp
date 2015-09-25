<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
                <table width="50%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Enter user information</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Customer number</td>
                            <td><input type="text" name="cno" value="" /></td>
                        </tr>
                        <tr>
                            <td>Customer Name</td>
                            <td><input type="text" name="cname" value="" /></td>
                        </tr>
                        <tr>
                            <td>Customer Street</td>
                            <td><input type="text" name="street" value="" /></td>
                        </tr>
                        <tr>
                            <td>Customer Zip</td>
                            <td><input type="text" name="zip" value="" /></td>
                        </tr>
                        <tr>
                            <td>Customer Phone</td>
                            <td><input type="text" name="phone" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Submit" /></td>
                       </tr>
                        <tr>
                            <td></td>
                            <td><input type="reset" value="Reset" /></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>