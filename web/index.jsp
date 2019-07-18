<%@ page import="java.util.ArrayList" %>
<%@ page import="customer.Customer" %><%--
  Created by IntelliJ IDEA.
  User: nguyenha265
  Date: 18/07/2019
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh Sach Khach Hang</title>
    <style>
        table {
            border-collapse: collapse;
            border-style: solid;
            position: absolute;
            top: 200px;
            left: 500px;
            box-shadow: 1px 1px 10px 10px #3965ff;
        }

        th, td {
            border-bottom: 1px solid black;
            width: 250px;
            text-align: center;
            line-height: 20px;
        }

        jsp
    </style>

</head>
<body>
<%
    ArrayList<Customer> listCustomers = new ArrayList<>();
    listCustomers.add(new Customer("Nguyễn Hà việt", "01/02/1995", "thái  nguyên", "viet.jpg"));
    listCustomers.add(new Customer("Đào như hoa", "10/04/1999", "Thái Bình", "nhuanh.jpg"));
    listCustomers.add(new Customer("Nguyễn Minh Quân ", "20/06/1999", "Mù Cang Chải ", "quan.jpg"));
    pageContext.setAttribute("listCustomers", listCustomers);
%>

    <table>

        <tr>
            <td><h2>Name</h2></td>
            <td><h2>Birthday</h2></td>
            <td><h2>Address</h2></td>
            <td><h2>Image</h2></td>
        </tr>
        <c:forEach var="customer" items="#{listCustomers}">
            <tr>
                <td><h1><c:out value="${customer.name}"/></h1></td>
                <td><h1><c:out value="${customer.birthday}"/></h1></td>
                <td><h1><c:out value="${customer.address}"/></h1></td>
                <td><img id="myImage" src="<c:out value="${customer.image}"/>" height="100" width="100"/></td>
            </tr>
        </c:forEach>

    </table>

</body>
</html>
