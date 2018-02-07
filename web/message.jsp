<%--
  Created by IntelliJ IDEA.
  User: zgf
  Date: 2018/2/4
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        //设定倒数秒数
        var t = 5;
        //显示倒数秒数
        function showTime(){
            t = t-1;
            $("#div1").html("如果你不执行任何操作，系统会在3秒后自动返回！"+t+"秒钟后自动返回.....");
            if(t==0){
                location.href="index.jsp";
            }
            //每秒执行一次,showTime()
            window.setTimeout("showTime()",1000);
        }
        //执行showTime()
        showTime();
    </script>
</head>
<body>
    <h1 align="center">${message}</h1>
        <div id="div1" align="center" style="font-size:15px;color:threeddarkshadow;" >
        </div>
</body>
</html>
