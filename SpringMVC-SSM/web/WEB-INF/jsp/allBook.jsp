<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/05/13
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍展示界面</title>

    <%--BootStrap美化界面--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
        <div class="container">
            <div class="row_clearfix">
                <div class="col-md-12 colum">
                    <div class="page-header">
                        <div style="color: grey;font-size: 20px">
                            <text>书籍列表——显示所有书籍</text>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 column">
                        <%--toAddBook--%>
                        <a class="btn btn-primary" style="width: 100%;background-color: grey;border-color: grey" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
                    </div>
                    <form class="col-md-8" action="${pageContext.request.contextPath}/book/queryBook" method="post">
                        <div class="row">
                            <div style="width: 50%;padding: 0 15px">
                                <input style="height: 100%; width: 100%;border-color: grey" name="bookName_like" placeholder="请输入需要查询的书籍名称" type="text">
                            </div>
                            <div style="width: 50%;padding: 0 15px">
                                <input style="width: 100%;background-color: grey;border-color: grey;color: white" type="submit" class="form-control" value="查询">
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-hover table-striped">
                        <thead>
                            <tr>
                                <th>书籍编号</th>
                                <th>书籍名称</th>
                                <th>书籍数量</th>
                                <th>书籍详情</th>
                                <th>操作</th>
                            </tr>
                        </thead>

                        <%--书籍从数据库中查询出来，从这个list中遍历出来:foreach--%>
                        <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/book/toUpdatePaper?bookID=${book.bookID}">修改</a>
                                    &nbsp; | &nbsp;
                                    <a href="${pageContext.request.contextPath}/book/deleteBook?bookID=${book.bookID}">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</body>
</html>
