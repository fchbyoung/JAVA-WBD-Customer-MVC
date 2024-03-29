<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: long
  Date: 18/07/2019
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
    <h1>Edit Customer</h1>
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
                    <td><input type="text" name="txtName" id="name" value="${requestScope["customer"].getName()}"></td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="txtEmail" id="email" value="${requestScope["customer"].getEmail()}"></td>
                </tr>

                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="txtAddress" id="address" value="${requestScope["customer"].getAddress()}"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Update customer"></td>
                </tr>
            </table>
        </fieldset>
    </form>

</body>
</html>
