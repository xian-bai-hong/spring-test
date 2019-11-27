<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>购物网</title>
    <link rel="stylesheet" href="aa.css">

    <link rel="stylesheet" href="denglu.css">
    <style>

        .aaaa {
            background-color: bisque;
            width: 1000px;
            height: 300px;
        }

        #mycart {

            border: 1px solid gray;
            border-radius: 5px;
            background: white;
            padding: 15px;
            position: fixed;
            right: 15cm;
            top: 40px;
            display: ${param.showCart != 1 ? 'none' : 'block'};
            height: 300px;
            width: 300px;
        }
    </style>

</head>
<body>
<!-- 1、网页头部 -->
<header id="top">
    <!-- 1、五角星(左) -->
    <%--    <img class="lf" src="#">--%>
    <!-- 2、收藏京东(左) -->
    <a href="#" class="lf">收藏</a>
    <!-- 3、文字列表(右) -->
    <ul class="rt">
        <li>
            您好，欢迎来到购物网
            <a id="displayCart" href="${pageContext.request.contextPath}/denglu.jsp">[登录]</a>
            <a href="#">[免费注册]</a>
        </li>
        <li>
            <b></b> <!-- 边框 -->
            <a href="#">我的订单</a>
        </li>
        <li class="vip">
            <b></b> <!-- 边框 -->
            <a href="#">会员俱乐部</a>
        </li>
        <li class="dakehu">
            <b></b> <!-- 边框 -->
            <a href="#">企业频道</a>
        </li>
        <li class="app_jd">
            <b></b> <!-- 边框 -->
            <a href="#">手机购物</a>
        </li>
        <li class="service">
            <b></b> <!-- 边框 -->
            <a href="#">客户服务</a>
            <!-- 弹出菜单 -->
            <ul id="service_items">
                <li>
                    <a href="#">?????</a>
                </li>
                <li>
                    <a href="#">?????</a>
                </li>
                <li>
                    <a href="#">?????</a>
                </li>
                <li>
                    <a href="#">?????</a>
                </li>
                <li>
                    <a href="#">?????</a>
                </li>
            </ul>
        </li>
        <li>
            <b></b> <!-- 边框 -->
            <a href="#">网站导航</a>
        </li>
    </ul>
</header>
<!-- 2、LOGO 和 搜索框 -->
<div id="top_main">
    <!-- 1、LOGO -->
    <a href="#" class="lf">
        <%--        <img src="#">--%>
    </a>
    <!-- 2、搜索框和搜索按钮 -->
    <div id="search_box">
        <!-- 1、搜索框和按钮 -->
        <div class="search">
            <input class="txtSearch">
            <button>搜索</button>
        </div>
    </div>
    <!-- 3、我的京东 -->
    <div id="my_jd">
        购物网
        <b></b><!-- 向下箭头 -->
    </div>
    <!-- 4、去购物车结算 -->
    <!-- 5、追加空子元素，撑起top_main -->
    <div class="clear"></div>
</div>
<!-- 3、主导航-->
<nav id="nav">主导航</nav>
<!-- 4、banner广告部分-->
<div id="banner">

    <div id="container">

        <div id="list" style="left:-600px;">

            <img src="./demo/1.png" alt="5.pg"/>

            <img src="./demo/1.png" alt="5.pg"/>

            <img src="./demo/2.png" alt="5.pg"/>

            <img src="./demo/3.png" alt="5.pg"/>

            <img src="./demo/4.png" alt="5.pg"/>

            <img src="./demo/5.png" alt="5.pg"/>

            <img src="./demo/6.png" alt="5.pg"/>

            <img src="./demo/7.png" alt="5.pg">
        </div>

        <div id="buttons">

            <span index="1" class="on "> </span>

            <span index="2"></span>

            <span index="3"></span>

            <span index="4"></span>

            <span index="5"></span>

        </div>

        <a href="javascript:;" class="arrow" id="prev">&lt;</a>

        <a href="javascript:;" class="arrow" id="next">&gt;</a>

    </div>
</div>


<!-- 5、页面主体-->
<table id="main">

    <tr aria-sort="ascending" class="aaaa">
        <td></td>
    </tr>

</table>


<!-- 6、页面底部-配送方式 -->
<footer id="foot_box">配送方式</footer>
<!-- 7、页面底部-备案号 -->
<footer id="footer">备案号</footer>


<%--<script src="${pageContext.request.contextPath}/denglu.css"></script>--%>

<form method="post" action="login" id="mycart">
    <div class="ib">
        <input id="un" name="username"/>
        <span data-placeholder="Username"></span>
    </div>
    <div class="ib">
        <input id="pw" name="password" type="password"/>
        <span data-placeholder="Password"></span>
    </div>
    <input type="hidden" name="back_url" value="${param["back_url"]}">

    <button onclick="doLogin()">点击登录</button>

    <div class="rg">
        如果没有注册，请点击 <a href="#">注册</a>
    </div>
</form>


</body>
<script>
    document.querySelector("#displayCart").addEventListener("click", function (evt) {
        evt.preventDefault();
        var cart = document.querySelector("#mycart");

        var display = cart.style.display;
        cart.style.display = display === 'block' ? 'none' : 'block';
    });
</script>
<%--图片轮播--%>
<script>
    window.onload = function () {

        var container = document.getElementById('container');

        var list = document.getElementById('list');

        var buttons = document.getElementById('buttons').getElementsByTagName('span');

        var pre = document.getElementById('prev');

        var next = document.getElementById('next');

        var index = 1;

        var animated = false;

        var timer;

        function showButton() {

            for (var i = 0; i < buttons.length; i++) {

                if (buttons[i].className == 'on') {

                    buttons[i].className = '';

                    break;

                }

            }

            buttons[index - 1].className = "on";

        }

        function animate(offset) {

            animated = true;

            var newleft = parseInt(list.style.left) + offset;

            var time = 300;//位移总时间

            var interval = 10;//位移间隔时间

            var speed = offset / (time / interval);//每一次的位移量


            function go() {

                if ((speed < 0 && parseInt(list.style.left) > newleft) || (speed > 0 && parseInt(list.style.left) < newleft)) {

                    list.style.left = parseInt(list.style.left) + speed + 'px';

                    setTimeout(go, interval);

                } else {

                    animated = false;

                    list.style.left = newleft + 'px';

                    if (newleft > -600) {

                        list.style.left = -3000 + 'px';

                    }

                    if (newleft < -3000) {

                        list.style.left = -600 + 'px';

                    }

                }

            }

            go();

        }

        function play() {

            timer = setInterval(function () {

                next.onclick();

            }, 3000);

        }

        function stop() {

            clearInterval(timer);

        }


        next.onclick = function () {

            if (index == 5) {

                index = 1;

            } else {

                index += 1;

            }

            showButton();

            if (animated == false) {

                animate(-600);

            }

        }

        pre.onclick = function () {

            if (index == 1) {

                index = 5;

            } else {

                index -= 1;

            }

            showButton();

            if (animated == false) {

                animate(600);

            }

        }


        for (var i = 0; i < buttons.length; i++) {

            buttons[i].onclick = function () {

                if (this.className == 'on') {

                    return;

                }

                var myIndex = parseInt(this.getAttribute('index'));

                var offset = -600 * (myIndex - index);


                index = myIndex;

                showButton();

                if (animated == false) {

                    animate(offset);

                }

            }

        }


        container.onmouseover = stop;

        container.onmouseout = play;

        play();

    }
</script>


</html>
