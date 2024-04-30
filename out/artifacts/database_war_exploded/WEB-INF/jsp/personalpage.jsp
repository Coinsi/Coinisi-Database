
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人主页设计</title>
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        /* 隐藏滚动条 */
        html::-webkit-scrollbar {
            display: none;
            /* Chrome Safari */
        }

        html {
            scrollbar-width: none;
            /* firefox */
            -ms-overflow-style: none;
            /* IE 10+ */
            overflow-x: hidden;
            overflow-y: auto;
        }

        body {
            width: 100%;
            height: 100%;
            background-size: cover;
            background: linear-gradient(rgb(0, 153, 255), #ffffff, #c1deff);
            cursor: url(https://cdn.xfabe.com/image/Arrow.cur), auto;
            font-size: 14px;
            color: rgb(0, 69, 126) !important;
        }

        a {
            text-decoration: none;
            cursor: url(https://cdn.xfabe.com/image/Arrow2.cur), auto;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        p,
        span {
            cursor: url(https://cdn.xfabe.com/image/IBeam.cur), auto;
        }

        li {
            list-style: none;
        }

        hr {
            border: 0;
        }

        .xf_ico {
            text-align: center;
        }

        .icon {
            font-size: 18px;
            padding: 10px 7px 0 7px;
            width: 1.8em;
            height: 1.8em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
        }

        /* 版心*/
        .core {
            margin: 0 auto !important;
            max-width: 350px;
            /* background-color: #fff; */
        }

        /* 标题 */
        .hd {
            text-align: center;
            font-size: 13px;
            font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif;
            color: white;
        }

        .hd h1 {
            font-style: italic;
            font-weight: 100;
            font-size: 230%;
            margin: 30px 10px 0px;
            color: #37afff;
            text-shadow: 4px 4px 0 white, 4px -4px 0 white, -4px -4px 0 white, -4px 4px 0 white, 4px 3px 0 white, 4px -3px 0 white, -4px -3px 0 white, -4px 3px 0 white, 4px 2px 0 white, 4px -2px 0 white, -4px -2px 0 white, -4px 2px 0 white, 4px 1px 0 white, 4px -1px 0 white, -4px -1px 0 white, -4px 1px 0 white, 4px 0px 0 white, 4px 0px 0 white, -4px 0px 0 white, -4px 0px 0 white, 3px 4px 0 white, 3px -4px 0 white, -3px -4px 0 white, -3px 4px 0 white, 3px 3px 0 white, 3px -3px 0 white, -3px -3px 0 white, -3px 3px 0 white, 3px 2px 0 white, 3px -2px 0 white, -3px -2px 0 white, -3px 2px 0 white, 3px 1px 0 white, 3px -1px 0 white, -3px -1px 0 white, -3px 1px 0 white, 3px 0px 0 white, 3px 0px 0 white, -3px 0px 0 white, -3px 0px 0 white, 2px 4px 0 white, 2px -4px 0 white, -2px -4px 0 white, -2px 4px 0 white, 2px 3px 0 white, 2px -3px 0 white, -2px -3px 0 white, -2px 3px 0 white, 2px 2px 0 white, 2px -2px 0 white, -2px -2px 0 white, -2px 2px 0 white, 2px 1px 0 white, 2px -1px 0 white, -2px -1px 0 white, -2px 1px 0 white, 2px 0px 0 white, 2px 0px 0 white, -2px 0px 0 white, -2px 0px 0 white, 1px 4px 0 white, 1px -4px 0 white, -1px -4px 0 white, -1px 4px 0 white, 1px 3px 0 white, 1px -3px 0 white, -1px -3px 0 white, -1px 3px 0 white, 1px 2px 0 white, 1px -2px 0 white, -1px -2px 0 white, -1px 2px 0 white, 1px 1px 0 white, 1px -1px 0 white, -1px -1px 0 white, -1px 1px 0 white, 1px 0px 0 white, 1px 0px 0 white, -1px 0px 0 white, -1px 0px 0 white, 0px 4px 0 white, 0px -4px 0 white, 0px -4px 0 white, 0px 4px 0 white, 0px 3px 0 white, 0px -3px 0 white, 0px -3px 0 white, 0px 3px 0 white, 0px 2px 0 white, 0px -2px 0 white, 0px -2px 0 white, 0px 2px 0 white, 0px 1px 0 white, 0px -1px 0 white, 0px -1px 0 white, 0px 1px 0 white;
        }

        .hd h2 {
            font-family: 'Courier New', Courier, monospace;
            font-size: 120%;
            font-weight: bold;
            margin-top: 4%;
            padding-right: 50%;
            transition: all 1s;
        }

        .hd h2:hover {
            text-shadow: 3px 2px 2px #000;
        }

        .hd h2 span {
            border-bottom: 1px solid #fff;
        }

        /* 大盒子 */
        .big_box {
            width: 100%;
            /* background-color: #fff; */
        }

        /* 下面懒得写注释了，都是用f12调试 */
        .main {
            float: left;
            width: 100%;
            margin: 5% auto;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 2px 2px 4px 1px #0000006e, inset 1px 1px 5px #00000057;
        }

        /* .tx a {
        display: contents;
        } */

        .tx img {
            width: 25%;
            margin: 10px auto;
            display: block;
            border-radius: 10em;
            box-shadow: inset 1px 1px 3px #c5c5c5, -2px -2px 3px #e8edf4;
        }

        .tx img:hover {
            -webkit-animation: round_animate 5s linear infinite;
            animation: round_animate 2s linear infinite;
        }

        @keyframes round_animate {
            to {
                transform: rotate(1turn);
            }
        }

        .hr_1 {
            margin: auto;
            width: 50%;
            margin-top: 5%;
            height: 1.5px;
            background-image: linear-gradient(to right, rgb(255, 255, 255), rgb(0, 0, 0), rgb(255, 255, 255));
            background-color: #fff;
        }

        .xf_introduce {
            /* 清除浮动 */
            overflow: auto;
            margin: 15px auto;
            width: 80%;
            padding: 8px;
            border-radius: 8px;
            background-color: #fff;
            font-size: 14px;
            box-shadow: inset 1px 1px 3px #c5c5c5, -2px -2px 3px #e8edf4;
        }

        .xf_introduce p {
            font-weight: 800;
            display: inline-block;
        }

        .xf_introduce h5 {
            display: inline-block;
            margin-top: 5px;
        }

        .xf-name {
            float: left;
        }

        .xf-area {
            float: right;
        }

        .xf_introduce .xf_word {
            overflow-x: hidden;
            overflow-y: hidden;
            width: 100%;
            height: 100%;
            font-family: 'Courier New', Courier, monospace;
            font-size: 14px;
            text-indent: 2em;
        }

        .yiyan {
            text-align: center;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            font-size: 12px;
            font-weight: bold;
        }

        .yiyan span {
            line-height: 20.5px;
        }

        .xf_introduce .xf_word p {
            float: left;
            padding: 3px;
            line-height: 20.5px;
        }

        .bottom_box {
            width: 100%;
            margin-top: 15px;
            clear: both;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 2px 2px 4px 1px #0000006e, inset 1px 1px 5px #00000057;
        }

        .site_box {
            text-align: center;
            font-size: 12px;
        }

        .site_box a {
            font-weight: bold;
            color: rgb(0, 69, 126);
            width: 20%;
            display: inline-block;
            margin: 10px;
            padding: 8px;
            border-radius: 7px;
            box-shadow: inset 1px 1px 3px #c5c5c5, -2px -2px 3px #e8edf4;
            transition: color 1s ease .1s;
        }

        .site_box a:hover {
            color: rgb(0, 132, 255);
            box-shadow: 2px 2px 5px 2px #0000005c, inset 1px 2px 3px 1px #8d8d8d45;
        }

        .footer {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            width: 100%;
            height: auto;
            text-align: center;
            margin: 45px auto;
            color: #000;
        }

        .footer p {
            margin: 5px auto;
            font-size: 15px;
        }

        .footer p a {
            padding: 3px;
            border-radius: 2px;
            color: rgb(37, 37, 37);
            transition: all 1s;
        }

        .footer p a:hover {
            text-shadow: 3px 2px 2px rgb(0, 0, 0);
        }

        .footer p:last-child {
            display: inline-block;
            border-bottom: 1px solid rgba(56, 56, 56, 0.746);
            transition: all 1s;
        }

        /* .footer p:last-child:hover {
        box-shadow: 2px 4px 6px 0 rgba(255, 255, 255, 0.746);
        } */
    </style>
    <link rel="shortcut icon" href="https://www.xfwl.club/favicon.ico" type="image/x-icon">
    <script src="../font/iconfont.js"></script>
    <script type="text/javascript">
        document.oncontextmenu = new Function("event.returnValue=false;");
        document.onselectstart = new Function("event.returnValue=false;");
    </script>
</head>

<body>
<div class="core">
    <!-- 标题 -->
    <header class="hd">
        <h1>Personal Home Design</h1>
        <h2><span>个人</span>主页</h2>
    </header>
    <!-- 大盒子 -->

    <section class="big_box">
        <div class="main">
            <div class="tx">
                <img src="https://q1.qlogo.cn/g?b=qq&nk=1809185784&s=100" alt="小枫" title="QQ">
            </div>
            <hr class="hr_1">
            <div class="xf_ico">
                <svg class="icon" aria-hidden="true">
                    <a href="#">
                        <use xlink:href="#icon-QQ"></use>
                    </a>
                </svg>
                <svg class="icon" aria-hidden="true">
                    <a href="#">
                        <use xlink:href="#icon-gitee"></use>
                    </a>
                </svg>
                <svg class="icon" aria-hidden="true">
                    <a href="#">
                        <use xlink:href="#icon-douyin"></use>
                    </a>
                </svg>
                <svg class="icon" aria-hidden="true">
                    <a href="#">
                        <use xlink:href="#icon-youxiang"></use>
                    </a>
                </svg>
            </div>
            <div class="xf_introduce">

                <div class="xf-name">

                    <p>
                    <h5>姓名：</h5>${user.username}
                    </p>
                    <h3>
                        <h5>电话：</h5>${user.phone}
                    </h3>

                </div>

                <div class="xf-area">
                    <p>
                    <h5>地址：</h5>${user.address}
                    </p>
                    <h3>
                        <h5>邮箱：</h5>${user.email}
                    </h3>
                </div>
            </div>
            <div class="xf_introduce">
                <div class="xf_word">
                    <p id="xf_type"></p>
                </div>
            </div>
            <div class="xf_introduce yiyan">
                <script type="text/javascript" src="https://api.xfyun.club/yiyan.php/?format=js&amp;charset=utf-8">
                </script>
                <span>
                        <script>
                            misaka()
                        </script>
                    </span>
            </div>
        </div>

        <div class="bottom_box">
            <div class="site_box">
                <a href="${pageContext.request.contextPath}/home" target="_blank" rel="noopener noreferrer" title="商城主页">商城主页</a>
                <a href="${pageContext.request.contextPath}/product/allProduct" target="_blank" rel="noopener noreferrer" title="全部商品">全部商品</a>
                <a href="${pageContext.request.contextPath}/order/allOrder" target="_blank" rel="noopener noreferrer"
                   title="全部订单">全部订单</a>
                <a href="#" target="_blank" rel="noopener noreferrer"
                   title="购物车">购物车</a>
                <a href="#" target="_blank" rel="noopener noreferrer" title="支付页面">支付页面</a>
            </div>
        </div>
    </section>
</div>

<!--text.js-->
<script >
    if (!!window.ActiveXObject || "ActiveXObject" in window) { //is IE?
        alert('朋友，上古浏览器不支持呢~');
    }
    let divTyping = document.getElementById('xf_type')
    let i = 0,
        timer = 0,
        str = '这是一个个人简介页面，你可以写自己的简介哦' //text
    //本人能够能够灵活使用PS,AI,PR,AE,CAD软件的操作,熟练HTML5,CSS3,JavaScript等前端开发技术。并且在学习这些技术的过程中运营过idc行业, 通过售卖云服的过程中学到如何去维护网站及服务器。 21 年下半年有过半年的电商美工经验, 做过淘宝、 拼多多、 虾皮、 速卖通、 国际站平台店铺的装修。（ 轮播、 海报、 LOGO....）淘宝（ PC端首页, 详情）, 速卖通, 国际站平台兼容代码装修实现动态交互效果 兼容CSS3、 banner、 雪花效果、 循环渐变效果....。差不多就这些吧。
    function typing() {
        if (i <= str.length) {
            divTyping.innerHTML = str.slice(0, i++) + '_'
            timer = setTimeout(typing, 100) //time
        } else {
            divTyping.innerHTML = str
            clearTimeout(timer)
        }
    }

    typing()
    var binft = function (r) {
        function t() {
            return b[Math.floor(Math.random() * b.length)]
        }
        function e() {
            return String.fromCharCode(94 * Math.random() + 33)
        }
        function n(r) {
            for (var n = document.createDocumentFragment(), i = 0; r > i; i++) {
                var l = document.createElement("span");
                l.textContent = e(),
                    l.style.color = t(),
                    n.appendChild(l)
            }
            return n
        }
        function i() {
            var t = o[c.skillI];
            c.step ? c.step-- : (c.step = g, c.prefixP < l.length ? (c.prefixP >= 0 && (c.text += l[c.prefixP]), c.prefixP++) : "forward" === c.direction ? c.skillP < t.length ? (c.text += t[c.skillP], c.skillP++) : c.delay ? c.delay-- : (c.direction = "backward", c.delay = a) : c.skillP > 0 ? (c.text = c.text.slice(0, -1), c.skillP--) : (c.skillI = (c.skillI + 1) % o.length, c.direction = "forward")),
                r.textContent = c.text,
                r.appendChild(n(c.prefixP < l.length ? Math.min(s, s + c.prefixP) : Math.min(s, t.length - c.skillP))),
                setTimeout(i, d)
        }
        var l = "", //本人就是个前端小白 主要还是做电商设计的 大佬勿喷！！！
            o = ["大道至简", "开发由我", "饿了么？", "一起来学习吧！"].map(function (r) {
                return r + "."
            }),
            a = 2,
            g = 1,
            s = 5,
            d = 75,
            b = ["rgb(110,64,170)", "rgb(150,61,179)", "rgb(191,60,175)", "rgb(228,65,157)", "rgb(254,75,131)", "rgb(255,94,99)", "rgb(255,120,71)", "rgb(251,150,51)", "rgb(226,183,47)", "rgb(198,214,60)", "rgb(175,240,91)", "rgb(127,246,88)", "rgb(82,246,103)", "rgb(48,239,130)", "rgb(29,223,163)", "rgb(26,199,194)", "rgb(35,171,216)", "rgb(54,140,225)", "rgb(76,110,219)", "rgb(96,84,200)"],
            c = {
                text: "",
                prefixP: -s,
                skillI: 0,
                skillP: 0,
                direction: "forward",
                delay: a,
                step: g
            };
        i()
    };
    binft(document.getElementById('xf_txt'));
</script>
<!-- fireworks-->
<script >
    class Circle {
        constructor({ origin, speed, color, angle, context }) {
            this.origin = origin
            this.position = { ...this.origin }
            this.color = color
            this.speed = speed
            this.angle = angle
            this.context = context
            this.renderCount = 0
        }

        draw() {
            this.context.fillStyle = this.color
            this.context.beginPath()
            this.context.arc(this.position.x, this.position.y, 2, 0, Math.PI * 2)
            this.context.fill()
        }

        move() {
            this.position.x = (Math.sin(this.angle) * this.speed) + this.position.x
            this.position.y = (Math.cos(this.angle) * this.speed) + this.position.y + (this.renderCount * 0.3)
            this.renderCount++
        }
    }

    class Boom {
        constructor({ origin, context, circleCount = 10, area }) {
            this.origin = origin
            this.context = context
            this.circleCount = circleCount
            this.area = area
            this.stop = false
            this.circles = []
        }

        randomArray(range) {
            const length = range.length
            const randomIndex = Math.floor(length * Math.random())
            return range[randomIndex]
        }

        randomColor() {
            const range = ['8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
            return '#' + this.randomArray(range) + this.randomArray(range) + this.randomArray(range) + this.randomArray(range) + this.randomArray(range) + this.randomArray(range)
        }

        randomRange(start, end) {
            return (end - start) * Math.random() + start
        }

        init() {
            for (let i = 0; i < this.circleCount; i++) {
                const circle = new Circle({
                    context: this.context,
                    origin: this.origin,
                    color: this.randomColor(),
                    angle: this.randomRange(Math.PI - 1, Math.PI + 1),
                    speed: this.randomRange(1, 6)
                })
                this.circles.push(circle)
            }
        }

        move() {
            this.circles.forEach((circle, index) => {
                if (circle.position.x > this.area.width || circle.position.y > this.area.height) {
                    return this.circles.splice(index, 1)
                }
                circle.move()
            })
            if (this.circles.length == 0) {
                this.stop = true
            }
        }

        draw() {
            this.circles.forEach(circle => circle.draw())
        }
    }

    class CursorSpecialEffects {
        constructor() {
            this.computerCanvas = document.createElement('canvas')
            this.renderCanvas = document.createElement('canvas')

            this.computerContext = this.computerCanvas.getContext('2d')
            this.renderContext = this.renderCanvas.getContext('2d')

            this.globalWidth = window.innerWidth
            this.globalHeight = window.innerHeight

            this.booms = []
            this.running = false
        }

        handleMouseDown(e) {
            const boom = new Boom({
                origin: { x: e.clientX, y: e.clientY },
                context: this.computerContext,
                area: {
                    width: this.globalWidth,
                    height: this.globalHeight
                }
            })
            boom.init()
            this.booms.push(boom)
            this.running || this.run()
        }

        handlePageHide() {
            this.booms = []
            this.running = false
        }

        init() {
            const style = this.renderCanvas.style
            style.position = 'fixed'
            style.top = style.left = 0
            style.zIndex = '999999999999999999999999999999999999999999'
            style.pointerEvents = 'none'

            style.width = this.renderCanvas.width = this.computerCanvas.width = this.globalWidth
            style.height = this.renderCanvas.height = this.computerCanvas.height = this.globalHeight

            document.body.append(this.renderCanvas)

            window.addEventListener('mousedown', this.handleMouseDown.bind(this))
            window.addEventListener('pagehide', this.handlePageHide.bind(this))
        }

        run() {
            this.running = true
            if (this.booms.length == 0) {
                return this.running = false
            }

            requestAnimationFrame(this.run.bind(this))

            this.computerContext.clearRect(0, 0, this.globalWidth, this.globalHeight)
            this.renderContext.clearRect(0, 0, this.globalWidth, this.globalHeight)

            this.booms.forEach((boom, index) => {
                if (boom.stop) {
                    return this.booms.splice(index, 1)
                }
                boom.move()
                boom.draw()
            })
            this.renderContext.drawImage(this.computerCanvas, 0, 0, this.globalWidth, this.globalHeight)
        }
    }

    const cursorSpecialEffects = new CursorSpecialEffects()
    cursorSpecialEffects.init()

    console.group("System");console.log("Name: 小枫网络");
    console.log("http://www.xfabe.com/");
    console.groupEnd();

</script>
<!--sonw-->
<script >
    /* 控制下雪 */
    function snowFall(snow) {
        /* 可配置属性 */
        snow = snow || {};
        this.maxFlake = snow.maxFlake || 200; /* 最多片数 */
        this.flakeSize = snow.flakeSize || 10; /* 雪花形状 */
        this.fallSpeed = snow.fallSpeed || 1; /* 坠落速度 */
    }
    /* 兼容写法 */
    requestAnimationFrame = window.requestAnimationFrame ||
        window.mozRequestAnimationFrame ||
        window.webkitRequestAnimationFrame ||
        window.msRequestAnimationFrame ||
        window.oRequestAnimationFrame ||
        function(callback) { setTimeout(callback, 1000 / 60); };
    cancelAnimationFrame = window.cancelAnimationFrame ||
        window.mozCancelAnimationFrame ||
        window.webkitCancelAnimationFrame ||
        window.msCancelAnimationFrame ||
        window.oCancelAnimationFrame;
    /* 开始下雪 */
    snowFall.prototype.start = function(){
        /* 创建画布 */
        snowCanvas.apply(this);
        /* 创建雪花形状 */
        createFlakes.apply(this);
        /* 画雪 */
        drawSnow.apply(this)
    }
    /* 创建画布 */
    function snowCanvas() {
        /* 添加Dom结点 */
        var snowcanvas = document.createElement("canvas");
        snowcanvas.id = "snowfall";
        snowcanvas.width = window.innerWidth;
        snowcanvas.height = document.body.clientHeight;
        snowcanvas.setAttribute("style", "position:absolute; top: 0; left: 0; z-index: 9999; pointer-events: none;");
        document.getElementsByTagName("body")[0].appendChild(snowcanvas);
        this.canvas = snowcanvas;
        this.ctx = snowcanvas.getContext("2d");
        /* 窗口大小改变的处理 */
        window.onresize = function() {
            snowcanvas.width = window.innerWidth;
            snowcanvas.height = window.innerHeight;
        }
    }
    /* 雪运动对象 */
    function flakeMove(canvasWidth, canvasHeight, flakeSize, fallSpeed) {
        this.x = Math.floor(Math.random() * canvasWidth); /* x坐标 */
        this.y = Math.floor(Math.random() * canvasHeight); /* y坐标 */
        this.size = Math.random() * flakeSize + 2; /* 形状 */
        this.maxSize = flakeSize; /* 最大形状 */
        this.speed = Math.random() * 1 + fallSpeed; /* 坠落速度 */
        this.fallSpeed = fallSpeed; /* 坠落速度 */
        this.velY = this.speed; /* Y方向速度 */
        this.velX = 0; /* X方向速度 */
        this.stepSize = Math.random() / 30; /* 步长 */
        this.step = 0 /* 步数 */
    }
    flakeMove.prototype.update = function() {
        var x = this.x,
            y = this.y;
        /* 左右摆动(余弦) */
        this.velX *= 0.98;
        if (this.velY <= this.speed) {
            this.velY = this.speed
        }
        this.velX += Math.cos(this.step += .05) * this.stepSize;
        this.y += this.velY;
        this.x += this.velX;
        /* 飞出边界的处理 */
        if (this.x >= canvas.width || this.x <= 0 || this.y >= canvas.height || this.y <= 0) {
            this.reset(canvas.width, canvas.height)
        }
    };
    /* 飞出边界-放置最顶端继续坠落 */
    flakeMove.prototype.reset = function(width, height) {
        this.x = Math.floor(Math.random() * width);
        this.y = 0;
        this.size = Math.random() * this.maxSize + 2;
        this.speed = Math.random() * 1 + this.fallSpeed;
        this.velY = this.speed;
        this.velX = 0;
    };
    // 渲染雪花-随机形状（此处可修改雪花颜色！！！）
    flakeMove.prototype.render = function(ctx) {
        var snowFlake = ctx.createRadialGradient(this.x, this.y, 0, this.x, this.y, this.size);
        snowFlake.addColorStop(0, "rgba(255, 255, 255, 0.9)"); /* 此处是雪花颜色，默认是白色 */
        snowFlake.addColorStop(.5, "rgba(255, 255, 255, 0.5)"); /* 若要改为其他颜色，请自行查 */
        snowFlake.addColorStop(1, "rgba(255, 255, 255, 0)"); /* 找16进制的RGB 颜色代码。 */
        ctx.save();
        ctx.fillStyle = snowFlake;
        ctx.beginPath();
        ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
        ctx.fill();
        ctx.restore();
    };
    /* 创建雪花-定义形状 */
    function createFlakes() {
        var maxFlake = this.maxFlake,
            flakes = this.flakes = [],
            canvas = this.canvas;
        for (var i = 0; i < maxFlake; i++) {
            flakes.push(new flakeMove(canvas.width, canvas.height, this.flakeSize, this.fallSpeed))
        }
    }
    /* 画雪 */
    function drawSnow() {
        var maxFlake = this.maxFlake,
            flakes = this.flakes;
        ctx = this.ctx, canvas = this.canvas, that = this;
        /* 清空雪花 */
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        for (var e = 0; e < maxFlake; e++) {
            flakes[e].update();
            flakes[e].render(ctx);
        }
        /* 一帧一帧的画 */
        this.loop = requestAnimationFrame(function() {
            drawSnow.apply(that);
        });
    }
    /* 调用及控制方法 */
    var snow = new snowFall({maxFlake:60});
    snow.start();
</script>
<script src="https://cdn.staticfile.org/jquery/3.5.1/jquery.min.js"></script>

</body>

</html>
