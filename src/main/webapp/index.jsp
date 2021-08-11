<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生管理表</title>
    <base href="<%=basePath%>" />
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">

        $(function () {
            $("#btnSelect").click(function (){
                loadStudentData();
            })
        })

        function loadStudentData() {
            $.ajax({
                url:"findStudent.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#info").empty();
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>")
                            .append("<td>"+n.sno+"</td>")
                            .append("<td>"+n.sname+"</td>")
                            .append("<td>"+n.addr+"</td>")
                            .append("<td>"+n.phone+"</td>")
                            .append("<td>"+n.sex+"</td>")
                            .append("<td>"+n.remark+"</td>")
                            .append("<td><a href = 'removeStudent.do?sno="+n.sno+"'>删除</a>&nbsp;&nbsp;<a href = 'modifyStudent.jsp?sno="+n.sno+"'>修改</a></td>")
                            .append("</tr>");
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table>
            <tr>
                <td>类型:</td>
                <td>
                    <select name="type" id="type">
                        <option value="0" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>>
                    </select>
                </td>
                <td>状态:</td>
                <td>
                    <select name="status" id="status">
                        <option value="0" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>>
                    </select>
                </td>
                <td>组长:</td>
                <td>
                    <select name="gleader" id="gleader">
                        <option value="0" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>>
                    </select>
                </td>
                <td>时间段</td>
                <td><input type="text" name="btime" style="width: 70px" /> - </td>
                <td><input type="etime" name="etime" style="width: 70px" /></td>
                <td>
                    <input type="reset" value="重置" style="background-color: cornflowerblue; color: white"/>
                </td>
                <td>
                    <input type="button" value="查询" style="background-color: cornflowerblue; color: white" id="btnSelect" />
                </td>
                <td>
                    <a href="addStudent.jsp"><input type="button" value="新增" style="background-color: cornflowerblue; color: white"  /></a>
                </td>
                <td>
                    <input type="button" value="导出" style="background-color: cornflowerblue; color: white" />
                </td>
                <td>
                    <input type="button" value="导出签到表" style="background-color: cornflowerblue; color: white" />
                </td>
            </tr>
        </table>
        <span id="page">
            <h5>
                当前1页,总19页,总190条记录&nbsp;
                <a href="#" style="color: dodgerblue; text-decoration: none">首页 1 2 3 4 5 6 7 8 >> 末页</a>
            </h5>
        </span>
        <table style="text-align: center">
            <thead style="background-color: gray">
                <tr>
                    <th width="100px">学号</th>
                    <th width="100px">姓名</th>
                    <th width="100px">地址</th>
                    <th width="100px">电话</th>
                    <th width="100px">性别</th>
                    <th width="100px">备注</th>
                    <th width="100px">操作</th>
                </tr>
            </thead>
            <tbody id="info" style="background-color: darkgray">

            </tbody>
        </table>
    </div>
</body>
</html>
