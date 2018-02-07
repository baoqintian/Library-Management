<%--
  Created by IntelliJ IDEA.
  User: zgf
  Date: 2018/2/4
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Add Library</title>
    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script>
        <!--获取表单的值并进行判断-->
      function check(){
       var list= $("#name").val().trim();
          if(list==""){
              alert("选项不能为空");
          }
      }
    </script>
</head>
<body>
<div align="center">
<h1>Library Management System</h1>
<a href="add.jsp" >Add Library</a>
<a href="<c:url value='/LibraryServlet?method=showAll'/> ">Show Library</a>
<a href="query.jsp">Find Library</a>
</div>
    <h3 align="center">Add Library</h3>
    <form  action="<c:url value='/LibraryServlet'/>" method="post">
        <input type="hidden" name="method" value="add">
        <table border="0" align="center" width="30%">
            <tr>
                <td width="10%">Name</td>
                <td width="20%">
                    <input id="name" type="text" name="name"  style="width: 150px;" placeholder="书籍名称"/>
                </td>
            </tr>
            <tr>
                <td>Author</td>
                <td>
                    <input class="list"type="text" name="author"   style="width: 150px;" placeholder="作者名称"/>
                </td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <input class="list" type="date" name="date"   style="width: 150px;" placeholder="出版日期"/>
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <input class="list"type="text" name="price"   style="width: 150px;" placeholder="零售价"/>
                </td>
            </tr>
            <tr>
                <td>Inventory</td>
                <td>
                    <input class="list" type="text" name="inventory"   style="width: 150px;" placeholder="库存"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="submit" onclick="return check();" value="提交">
                    <input type="reset" name="submit">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
