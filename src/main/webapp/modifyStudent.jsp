<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<%
    String sno = request.getParameter("sno");
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生信息</title>
    <base href="<%=basePath%>" />
</head>
<body>
<div align="center">
    <form action="modifyStudent.do"method="post">
        <table style="text-align: center">
            <tr>
                <th>学号：</th>
                <td><input type="text" name="sno" value="<%=sno%>" readonly="true"></td>
            </tr>
            <tr>
                <th>姓名：</th>
                <td><input type="text" name="sname"></td>
            </tr>
            <tr>
                <th>地址：</th>
                <td><input type="text" name="addr"></td>
            </tr>
            <tr>
                <th>电话：</th>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <th>性别：</th>
                <td><input type="text" name="sex"></td>
            </tr>
            <tr>
                <th>备注：</th>
                <td><input type="text" name="remark"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="修改学生信息"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
