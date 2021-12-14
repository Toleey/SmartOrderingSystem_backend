<%@ page import="java.util.List" %>
<%@ page import="com.toleey.smartorderingsystem.pojo.Order" %><%--
  Created by IntelliJ IDEA.
  User: toby
  Date: 2021/11/29
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>出餐列表</title>
    <%
       List<Order>orderList = (List<Order>) session.getAttribute("orderList");
    %>
</head>
<body>
<table>
    <%= orderList%>

    <tr>
        <th>待取餐品</th>
    </tr>
    <tr>
        <th>ID</th>
        <th>餐品</th>
        <th>数量</th>
    </tr>
    <tr>
        <td>1</td>
        <td>三拼霸霸</td>
        <td>x2</td>
        <td>
            <input type="button" value="已出餐" />
        </td>
        <td>
            <input type="button" value="取消" />
        </td>
        <td>
            <input type="button" value="联系顾客" />
        </td>
    </tr>
    <tr>
        <td>1</td>
        <td>三拼霸霸</td>
        <td>x2</td>
        <td>
            <input type="button" value="已出餐" />
        </td>
        <td>
            <input type="button" value="取消" />
        </td>
        <td>
            <input type="button" value="联系顾客" />
        </td>
    </tr>
</table>


</body>
</html>
