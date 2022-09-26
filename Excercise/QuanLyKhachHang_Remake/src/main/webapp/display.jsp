<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/26/2022
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="model.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h1>DANH SÁCH KHÁCH HÀNG</h1>
<table>
    <tr>
        <th>Name</th>
        <th>DOB</th>
        <th>Address</th>
        <th>Image</th>
    </tr>
    <c:forEach items="${customerList}" var="customer">
    <tr>
        <td><c:out value="${customer.getCusName()}"></c:out></td>
        <td><c:out value="${customer.getCusDob()}"></c:out></td>
        <td><c:out value="${customer.getCusAddress()}"></c:out></td>
        <td><img class="avatar" src="<c:out value="${customer.getCusAvatar()}"></c:out> "></td>
    </tr>
    </c:forEach>
</table>





</body>
</html>
