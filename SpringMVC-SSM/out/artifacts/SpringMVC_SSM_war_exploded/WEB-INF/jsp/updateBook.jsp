<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/05/16
  Time: 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
    <%--BootStrap美化界面--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <div style="color: grey;font-size: 20px">
                        <text>修改书籍</text>
                    </div>
                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <div class="form-group">
                <label>书籍编号:</label>
                <input type="text" readonly="readonly" name="bookID" value="${book.bookID}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>书籍名称:</label>
                <input type="text"  name="bookName" value="${book.bookName}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>书籍数量:</label>
                <input type="text" name="bookCounts" value="${book.bookCounts}" class="form-control" required>
            </div>
            <div class="form-group">
                <label>书籍描述:</label>
                <input type="text" name="detail" value="${book.detail}" class="form-control" required>
            </div>
            <div  class="form-group" style="width: 50%;margin: 0 auto;">
                <input type="submit" class="form-control" value="修改">
            </div>
        </form>

    </div>

</body>
</html>
