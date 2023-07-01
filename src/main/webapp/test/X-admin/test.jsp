<%--
  Created by IntelliJ IDEA.
  User: 王涵
  Date: 2023/6/9
  Time: 18:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="UTF-8">

    <title>获取文件成功</title>

</head>

<body>

<%= list != null ? "" : "获取文件失败" %>

<table border="1">

    <tr>

        <th>用户ID</th>

        <th>用户名</th>

        <th>用户邮箱</th>

    </tr>

    <c:forEach items="${list}" var="user">

        <tr>

            <td>${user.id}</td>

            <td>${user.name}</td>

            <td>${user.mail}</td>

        </tr>

    </c:forEach>

</table>

</body>

</html>