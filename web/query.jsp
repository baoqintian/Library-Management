<%--
  Created by IntelliJ IDEA.
  User: zgf
  Date: 2018/2/4
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Find Product</title>
</head>
<body>
    <h3 align="center">Find Product</h3>
    <form  action="<c:url value="/LibraryServlet"/> " method="get">
        <input type="hidden" name="method" value="query">
        <table border="0" align="center" width="30%">
                <td>Name</td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>
            <tr>
                <td>Author</td>
                <td>
                    <input type="text" name="author">
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <input type="text" name="Date" />
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input type="text" name="price"/>
                </td>
            </tr>
            <tr>
                <td>Inventory</td>
                <td>
                    <input type="text" name="inventory"/>
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
