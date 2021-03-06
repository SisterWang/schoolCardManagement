<!doctype html>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap-4.1.1-dist/css/bootstrap.min.css" >
    <!--引入外部css-->
    <link rel="stylesheet" href="css/index.css" >
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="bootstrap-4.1.1-dist/js/jquery-3.3.1.min.js"></script>
    <!---->
    <script src="bootstrap-4.1.1-dist/js/bootstrap.min.js"></script>
    
    <link rel="icon" href="img/logo1.png" type="image/x-icon" />
    <link rel="shortcut icon" href="img/logo1.png" type="image/x-icon" />

    <script>
      $(function(){
        var $iframe = $("#mainif");

        //查询余额
        $("#balance").click(function(){
          $iframe.attr("src","balance");
        });

        // 查询消费
        $("#consume").click(function(){
          $iframe.attr("src","consume");
        });

        //查询充值
        $("#recharged").click(function(){
          $iframe.attr("src","recharged");
        });
        //在线充值
        $("#recharge").click(function(){
          $iframe.attr("src","recharge");
        });

        //挂失校园卡
        $("#belosed").click(function(){
          $iframe.attr("src","belosed.html");
        });

        //注销校园卡
        $("#cancel").click(function(){
          $iframe.attr("src","cancel.html");
        });

        //更多功能
        $("#more").click(function(){
          $iframe.attr("src","more.html");
        });

        //点击效果
        var $Lis = $("#sel li");
        $Lis.click(function(){
          $Lis.removeClass("active");
          $(this).addClass("active");
        });
      });
    </script>
    <title>校园卡管理系统-学生</title>  
  </head>
  <body class="bg-light">
    <!--头-->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
      <a class="navbar-brand" href="#">
        <img src="img/logo1.png" alt="Logo" style="width:70px;">
      </a>
      <ul id="sel" class="navbar-nav">
          <li id="balance" class="nav-item active">
            <a class="nav-link" href="#">查询余额</a>
          </li>
          <li id="consume" class="nav-item">
            <a class="nav-link" href="#">查询消费</a>
          </li>
          <li id="recharged" class="nav-item">
            <a class="nav-link" href="#">查询充值</a>
          </li>
          <li id="recharge" class="nav-item">
            <a class="nav-link" href="#">在线充值</a>
          </li>
          <li id="belosed" class="nav-item">
            <a class="nav-link" href="#">挂失校园卡</a>
          </li>
          <li id="cancel" class="nav-item">
            <a class="nav-link" href="#" data-toggle="modal" data-target="#mymodal">注销校园卡</a>
          </li>
          <li id="more" class="nav-item">
            <a class="nav-link disabled" href="#">更多功能</a>
          </li>
      </ul>
    </nav>
    <div id="maindrop" class="centerbox1">
      <iframe id="mainif" src="balance.html" frameborder="0" scrolling="no" allowfullscreen="yes" style="width: 100%;height: 100%;display: block;"></iframe>
    </div>
    
    <!-- 模态框 -->
    <div class="modal fade" id="mymodal">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title text-danger">警告</h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
              </div>
              <div class="modal-body">
                <p>此操作确认后无法恢复，确认要注销吗？</p>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">已经了解</button>
              </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
  </body>

</html>