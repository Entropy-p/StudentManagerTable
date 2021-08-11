<%
  String basePath = request.getScheme() + "://" +
          request.getServerName() + ":" + request.getServerPort() +
          request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作结果</title>
    <base href="<%=basePath%>" />
</head>
<body>
    <div align="center">
      ${tips}
    </div>
</body>
</html>
