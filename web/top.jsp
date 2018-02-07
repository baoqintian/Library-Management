<%--
  Created by IntelliJ IDEA.
  User: zgf
  Date: 2018/2/4
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <base target="welcome">
</head>
<body style="text-align: center">

    <h1>Library Management System</h1>
    <a href="add.jsp" >Add Library</a>
    <a href="<c:url value='/LibraryServlet?method=showAll'/> ">Show Library</a>
    <a href="query.jsp">Find Library</a>


</body>
</html>
