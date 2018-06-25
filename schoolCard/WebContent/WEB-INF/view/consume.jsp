
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
 
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.1.1-dist/css/bootstrap.min.css" >
    <!--å¼å¥å¤é¨css-->
    <link rel="stylesheet" href="css/form.css" >
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="bootstrap-4.1.1-dist/js/jquery-3.3.1.min.js"></script>
    <!---->
    <script src="bootstrap-4.1.1-dist/js/bootstrap.min.js"></script>
    <script>

    </script>
    <title>查询消费~</title>  
  </head>
  <body class="bg-light">

    <div  class="centerbox1">
      <h2>查询消费</h2>
      <br>
      <table class="table table-striped">
        <thead>
          <tr>
            <th>消费编号</th>
            <th>消费地点</th>
            <th>消费时间</th>
            <th>消费金额</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach items="${consumeInfo}" var="consumeInfo" >
  		<tr>
  			<td>${consumeInfo.consumeId }</td>
   			<td>${consumeInfo.consumeAddress}</td>
   			<td>${consumeInfo.consumeTime}</td>
   			<td>${consumeInfo.consumeAmount}</td>
  		</tr>
  		</c:forEach>
        </tbody>
      </table>
    </div> 
  </body>

</html>