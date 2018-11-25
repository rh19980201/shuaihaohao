<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/22
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <title>新增员工</title>
</head>
<body>
   <form method="post" action="<%=request.getContextPath()%>/book/addbook.jhtml">
       <input type="text"  name="bookName"/>
       <input type="text"  name="bookPrice"/>
       <input type="submit"  value="新增"/>
   </form>
</body>
</html>
