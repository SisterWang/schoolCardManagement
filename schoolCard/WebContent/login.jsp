<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.1.1-dist/css/bootstrap.min.css" >
    <link rel="stylesheet" href="css/form1.css" >

    <link rel="icon" href="img/logo1.png" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo1.png" type="image/x-icon" />
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="bootstrap-4.1.1-dist/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap-4.1.1-dist/js/bootstrap.min.js"></script>

    <script>
      $(function(){
        $(":radio").click(function(){
          var $val = $(this).val();
          if ($val == "guanliyuan") {
            $("#name").html("管理员账号");
            $("#nameinput").attr("placeholder","输入管理员账号");
            $("#myform").attr("action","manage_index.html");
          }
          else if ($val == "student") {
            $("#name").html("学号");
            $("#nameinput").attr("placeholder","输入学号");
            $("#myform").attr("action","index.html");
          }
  
        });
      });
      
    </script>
    <title>登录</title>  
  </head>
  <body class="bg-light">
    <br>
    <br>
    <!--头-->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
      <div class="centerbox2">
        <img id="logo" src="img/logo.png" alt="">
      </div>  
    </nav>
    <div id="body" class="centerbox1">
    <!--表单-->
      <h2>欢迎登录校园卡管理系统~</h2>
      <br>
      <sf:form id="myform" class="form-control" role="form" action="manage_index.html">
        
        <div class="form-group">
          <label id="name" for="name">管理员账号:</label>
          <input id="nameinput" type="text" class="form-control" id="exampleInputName" placeholder="输入管理员账号">
        </div>
        <div class="form-group">
          <label id="password" for="password">密码:</label>
          <label class="sr-only" for="exampleInputPassword2">密码</label>
          <input type="password" class="form-control" id="exampleInputPassword" placeholder="输入密码">
        </div>
        <div class="checkbox">
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios1" value="guanliyuan" checked>
        管理员
          </label>
        </div>
        <div class="radio">
          <label>
          <input type="radio" name="optionsRadios" id="optionsRadios2" value="student">
        学生
          </label>
        </div>
        </div>
        <button type="submit" class="btn btn-primary">登录</button>
 	</sf:form>	
    </div>
   
  </body>

</html>