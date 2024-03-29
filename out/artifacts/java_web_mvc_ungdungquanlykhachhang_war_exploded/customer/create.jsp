<%--
  Created by IntelliJ IDEA.
  User: long
  Date: 18/07/2019
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create</title>
    <style>
        .message{
            color:green;
        }
    </style>
</head>
<body>
    <h1>Create New Customer</h1>
    <p>
        <c:if test='${requestScope["message"]!=null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>
    <p>
        <a href="/customers">Back to customer list</a>
    </p>

    <form action="" method="post">
        <fieldset>
            <legend>Customer information</legend>
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="txtName" id="name"></td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="txtEmail" id="email"></td>
                </tr>

                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="txtAddress" id="adress"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Create customer"></td>
                </tr>
            </table>
        </fieldset>
    </form>

</body>
</html>
