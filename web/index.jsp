
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>


    <title>导航栏</title>



    <style>
      /*搜索框和搜索按钮和热门搜索*/
      #search_box{
        /*左浮动，宽度，左右外边距，min-height*/
        float:left;
        width:500px;
        margin:0 80px 0 40px;
        min-height:30px;
      }
      #search_box div.search{
        /*高度，背景颜色*/
        height:30px;
        background-color:#e4393c;
        /*边框*/
        padding:3px;
      }
      #search_box input{
        /*宽度，高度，取消边框*/
        width:410px;
        height:30px;
        border:none;
        box-sizing:border-box;
        padding-left:10px;
      }
      #search_box {
        /*宽度，高度，取消边框，背景颜色*/
        width:80px;
        height:28px;
        border:none;
        background-color:#E4393C;
        /*文字：大小，颜色，加粗*/
        font-size:14px;
        color:#fff;
        font-weight:bold;
      }


      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
      }
      ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background-color:darkgray;
      }
      li {
        float: left;
      }
      li a {
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
      }
      /*鼠标移动到选项上修改背景颜色 */
      li a:hover {
        background-color: red;
      }
      #displayCart{
        float: right;
      }
      #mycart {

        border: 1px solid gray;
        border-radius: 5px;
        background: white;
        padding: 15px;
        position: fixed;
        right: 10px;
        top: 40px;
        display: ${param.showCart != 1 ? 'none' : 'block'};
      }
      .aa{

        margin-top: 50px;
        width: 500px;
      }

    </style>
  </head>
  <body>
  <ul>
    <li><a href="#home">主页</a></li>
    <li><a href="#news">新闻</a></li>
    <li><a href="#contact">联系</a></li>
    <li><a href="#about">关于</a></li>
    <li id="displayCart"><a href="${pageContext.request.contextPath}/denglu.jsp">登录/注册</a></li>
  </ul>





  <script>
    document.querySelector("#displayCart").addEventListener("click", function (evt) {
      evt.preventDefault();
      var cart = document.querySelector("#mycart");
      alert(cart)
      var display = cart.style.display;
      cart.style.display = display === 'block' ? 'none' : 'block';
    });
  </script>
  </body>
</html>
