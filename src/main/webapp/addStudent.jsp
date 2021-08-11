
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册学生</title>
    <base href="<%=basePath%>" />
</head>
<body>
    <div align="center">
        <form action="addStudent.do"method="post">
            <table style="text-align: center">
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
                    <td><input type="submit" value="注册学生"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
