<%--
  Created by IntelliJ IDEA.
  User: zgf
  Date: 2018/2/4
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
    <h3 align="center">Edit Product</h3>
    <form  action="<c:url value="/LibraryServlet"/> " method="post">
        <input type="hidden" name="method" value="edit"/>
        <input type="hidden" name="id" value="${library.id}">
        <table border="0" align="center" width="30%">
            <tr>
                <td>Name</td>
                <td>
                    <input type="text" name="name" value="${library.name}"/>
                </td>
            </tr>
            <tr>
                <td>Author</td>
                <td>
                    <input type="text" name="author" value="${library.author}"/>
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input type="text" name="price" value="${library.price}"/>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <input type="text" name="date" value="${library.date}"/>
                </td>
            </tr>
            <tr>
                <td>Inventory</td>
                <td>
                    <input type="text" name="inventory" value="${library.inventory}"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="submit"/>
                    <input type="reset" name="reset"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
