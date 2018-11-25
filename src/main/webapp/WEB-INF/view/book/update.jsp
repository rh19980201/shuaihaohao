<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/22
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<html>
<head>
    <title>
        修改页面</title>
</head>
<body>
<form method="post" action="<%=request.getContextPath()%>/book/update.jhtml">
     <input type="hidden" name="id" value="${book.id}">
    <input type="text"  name="bookName"  value="${book.bookName}"/>
    <input type="text"  name="bookPrice"  value="${book.bookPrice}"/>
    <input type="submit"  value="修改"/>
</form>
</body>
</html>
