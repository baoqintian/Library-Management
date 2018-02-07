<%--
  Created by IntelliJ IDEA.
  User: zgf
  Date: 2018/2/4
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Library List</title>
</head>
<body>
    <h3 align="center">Library List</h3>
    <table align="center" width="70%" border="1">
        <tr>
            <th>Name</th>
            <th>Author</th>
            <th>Date</th>
            <th>Price</th>
            <th>Inventory</th>
        </tr>
        <c:forEach items="${pageBean.beanList}" var="library">
            <tr>
                <td>${library.name}</td>
                <td>${library.author}</td>
                <td>${library.date}</td>
                <td>${library.price}</td>
                <td>${library.inventory}</td>
                <td>
                    <a href="<c:url value='/LibraryServlet?method=preEdit&id=${library.id}'/> ">Edit</a>
                    <a href="<c:url value='/LibraryServlet?method=delete&id=${library.id}'/> ">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <center>
        <a href="${pageBean.url}&pageCode=1">FirstPage</a>

        <c:if test="${pageBean.pageCode>1}">
            <a href="${pageBean.url}&pageCode=${pageBean.pageCode-1}">PreviousPage</a>
        </c:if>

        <c:choose>
            <c:when test="${pageBean.totalPage<=10}">
                <c:set var="begin" value="1"/>
                <c:set var="end" value="${pageBean.totalPage}"/>
            </c:when>
            <c:otherwise>
                <c:set var="begin" value="${pageBean.pageCode-5}"/>
                <c:set var="end" value="${pageBean.pageCode+4}"/>

                <c:if test="${begin<1}">
                    <c:set var="begin" value="1"/>
                    <c:set var="end" value="10"/>
                </c:if>

                <c:if test="${end>pageBean.totalPage}">
                    <c:set var="begin" value="${pageBean.totalPage-9}"/>
                    <c:set var="end" value="${pageBean.totalPage}"/>
                </c:if>
            </c:otherwise>
        </c:choose>

        <c:forEach var="i" begin="${begin}" end="${end}">
            <c:choose>
                <c:when test="${i eq pageBean.pageCode}">
                    [${i}]
                </c:when>
                <c:otherwise>
                    <a href="${pageBean.url}&pageCode=${i}">[${i}]</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>


        <c:if test="${pageBean.pageCode<pageBean.totalPage}">
            <a href="${pageBean.url}&pageCode=${pageBean.pageCode+1}">NextPage</a>
        </c:if>
        <a href="${pageBean.url}&pageCode=${pageBean.totalPage}">LastPage</a>

    </center>
</body>
</html>
