<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="head.jsp" %>

    <link rel="stylesheet" href="css/reset2.css">
    <link rel="stylesheet" href="header.css">
    <style>
        /* header.css */

        /* content */
        .content {
            clear: both;
            width: 100%;
        }

        .content:after {
            content: "";
            display: block;
            clear: both;
        }

        .vs {
            clear: both;
            width: 100%;
            height: 100vh;
            overflow: hidden;
        }

        .vdo {
            display: block;
            width: 100%;
            height: auto;
        }

        .page {
            clear: both;
            width: 100%;
        }

        .page_wrap {
            width: 1200px;
            margin: 0 auto;
        }

        #page1,
        #page3 {
            background-color: #ececec;
        }

        .page_tit {
            text-align: center;
            font-size: 32px;
            padding-top: 2em;
            padding-bottom: 2em;
        }

        .lst {
            clear: both;
            width: 1200px;
            padding-bottom: 80px;
        }

        .lst:after {
            content: "";
            display: block;
            clear: both;
        }

        .lst li {
            margin-bottom: 40px;
        }

        .lst li.left {
            float: left;
            width: 620px;
            height: 349px;
        }

        .lst li.right {
            float: right;
            width: 540px;
            height: 349px;
            padding-top: 25px;
        }

        .ico_lst {
            clear: both;
            width: 100%;
            overflow: hidden;
        }

        .ico_lst li a {
            display: block;
            background-repeat: no-repeat;
            background-position: 0 center;
            background-size: auto 80%;
            padding-left: 85px;
        }

        .ico_lst li a.icon1 {
            background-image: url(img/icon/human96.png);
        }

        .ico_lst li a.icon2 {
            background-image: url(img/icon/citizen96.png);
            background-size: auto 110%;
        }

        .ico_lst li a.icon3 {
            background-image: url(img/icon/youth96.png);
            background-size: auto 100%;
        }

        .cate_tit {
            color: #222;
            font-size: 20px;
            padding-bottom: 0.5em;
        }

        .cate_com {
            color: #222;
            font-size: 16px;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }

        #page2 {
            background-color: rgb(235, 230, 211);
        }

        .pic_lst {
            clear: both;
            width: 100%;
            padding-bottom: 120px;
        }

        .pic_lst::after {
            content: "";
            display: block;
            clear: both;
        }

        .pic_lst li {
            float: left;
            position: relative;
            margin-bottom: 40px;
        }

        .pic_lst li a {
            display: block;
            width: 360px;
            margin-right: 40px;
            overflow: hidden;
            height: 300px;
        }

        .pic_lst li a img {
            display: block;
            width: 732px;
            margin-left: -120px;
            transition-duration: 0.8s;
        }

        .pic_lst li a:hover img {
            margin-left: 0;
        }

        .pic_lst li a .hv_box {
            width: 360px;
            height: 300px;
            color: #fff;
            opacity: 0;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 10;
            transition-duration: 0.8s;
            background-color: transparent;
        }

        .pic_lst li a:hover .hv_box {
            opacity: 1;
        }

        .pic_date {
            position: absolute;
            top: 30px;
            left: 30px;
            text-shadow: 0px 0px 3px red;
        }

        .pic_tit {
            position: absolute;
            right: 30px;
            bottom: 30px;
            text-shadow: 0px 0px 3px blue;
        }

        #page3 {
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            height: 100vh;
            background-image: url(img/partnerlogo/bg_logo.jpg);
            overflow: hidden;
        }

        #page3 .page_wrap {
            width: 100%;
        }

        .circle_lst {
            clear: both;
            width: 5227px;
        }

        .circle_lst li {
            width: 200px;
            height: 200px;
            position: relative;
            border-radius: 120px;
            overflow: hidden;
            background-color: #fff;
            float: left;
            margin: 28px;
        }

        .circle_lst.lst2 li {
            float: right;
        }

        .circle_lst li a {
            display: block;
            width: 100%;
            height: 100%;
        }

        .circle_lst li img {
            display: block;
            width: 250px;
            height: auto;
            position: absolute;
            top: 35%;
            left: -25px;
            z-index: 11;
            margin-top: -28px;
        }

        /* footer.css */
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
        $(document).ready(function () {
            $(window).scroll(function () {
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if (tp >= 600) {
                    $(".hd").css("position", "fixed");
                } else {
                    $(".hd").css("position", "absolute");
                }
            });
            $
            $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
            $lst1_obj = $(".circle_lst li").clone();
            $(".circle_lst.lst2").append($lst1_obj);
        });   
    </script>
</head>

<body>
    <div class="wrap">
        <header class="hd">
			<%@ include file="nav.jsp" %>
        </header>
        <div class="content">
            <figure class="vs">
                <video src="video/video2.mp4" autoplay muted loop class="vdo"></video>
            </figure>
            <section class="page" id="page1">
                <div class="page_wrap">
                    <h2 class="page_tit">?????????<br>?????? ????????????<br>???????????? ?????????</h2>
                    <ul class="lst">
                        <li class="left">
                            <iframe name="vdo2" id="vdo2" width="620" height="349"
                                src="https://www.youtube.com/embed/xpOYApHBBu4" title="[????????? TV??????] ?????? ???" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </li>
                        <li class="right">
                            <ul class="ico_lst">
                                <li>
                                    <a href="https://youtu.be/-9CoF03WqVc" target="vdo2" class="icon1">
                                        <h3 class="cate_tit">????????? ???????????? ??? ????????? ?????????<br>???(On)????????? ?????????!</h3>
                                        <p class="cate_com">???????????? ?????? ????????? ?????? ???(On)?????????, ?????? ????????? ??????????????? ????????? ??????????????????.</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://youtu.be/NJwsPhG2NGI" target="vdo2" class="icon2">
                                        <h3 class="cate_tit">??????, ????????? ??????</h3>
                                        <p class="cate_com">??? ?????? ????????? ????????? ??????
                                            ??????, ??? ?????? ???
                                            ???????????? ???????????? ?????? ????????????</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://youtu.be/g8xM9WbZES8" target="vdo2" class="icon3">
                                        <h3 class="cate_tit">I AM #STEELSTRONG</h3>
                                        <p class="cate_com">?????? ???????????? ?????????
                                            ?????? ???????????? ?????????
                                            ?????? ???????????? ?????????
                                            ?????? ???????????? ?????????
                                            ?????? ??? ????????? ?????????
                                            ?????? ???????????? ?????????
                                            ?????? ?????? ????????? ?????????!</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page2">
                <div class="page_wrap">
                    <h2 class="page_tit">???????????? ????????? 50??? ??????</h2>
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history1.jpg" alt="???????????????????????????(KISA) ???????????? ???????????????????????? ????????????"
                                    class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1967.10.12</h3>
                                    <p class="pic_tit">???????????????????????????(KISA) ????????????<br> ???????????????????????? ????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history2.jpg" alt="?????? 4??? ????????????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1981.02.18</h3>
                                    <p class="pic_tit">?????? 4??? ????????????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history3.jpg" alt="??????CTS ??????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1986.04.10</h3>
                                    <p class="pic_tit">??????CTS ??????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history3-1.jpg" alt="?????????(?????????) ?????? ??????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1995.11.28</h3>
                                    <p class="pic_tit">?????????(?????????) ?????? ??????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history4.jpg" alt="?????? ???????????? 1999???~2003??? 5??? ?????? ?????? ?????? ????????? ??????"
                                    class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2003.04.14</h3>
                                    <p class="pic_tit">?????? ???????????? 1999???~2003???<br> 5??? ?????? ?????? ?????? ????????? ??????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history5.jpg" alt="???????????????????????? ??????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2003.07.03</h3>
                                    <p class="pic_tit">???????????????????????? ??????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history7.jpg" alt="????????? ?????? ????????? ???????????????????????? ??????" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2013.12.23</h3>
                                    <p class="pic_tit">????????? ?????? ????????? ???????????????????????? ??????</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history8.jpg" alt="?????????????????? ?????? 13??? ?????? '?????????????????? ????????????'??????(DJSI)"
                                    class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2017.09.07</h3>
                                    <p class="pic_tit">?????????????????? ?????? 13??? ??????<br> '?????????????????? ????????????'??????(DJSI)</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history10.jpg" alt="???????????? ?????? ?????????????????? ?????? ??????????????????(WEF)" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2019.07.01</h3>
                                    <p class="pic_tit">???????????? ?????? ?????????????????? ??????<br> ??????????????????(WEF)</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page3">
                <div class="page_wrap">
                    <h2 class="page_tit">?????? ?????? ??? ??????<br>POSCO<br>?????? ????????????</h2>
                    <ul class="circle_lst">
                        <li><a href=""><img src="img/partnerlogo/logo1.png" alt="partnerlogo01" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo2.png" alt="partnerlogo02" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo3.png" alt="partnerlogo03" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo4.png" alt="partnerlogo04" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo5.png" alt="partnerlogo05" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo6.png" alt="partnerlogo06" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo7.png" alt="partnerlogo07" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo8.png" alt="partnerlogo08" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo9.png" alt="partnerlogo09" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo10.png" alt="partnerlogo10" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo11.png" alt="partnerlogo11" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo12.png" alt="partnerlogo12" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo13.png" alt="partnerlogo13" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo14.png" alt="partnerlogo14" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo15.png" alt="partnerlogo15" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo16.png" alt="partnerlogo16" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo17.png" alt="partnerlogo17" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo18.png" alt="partnerlogo18" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo19.png" alt="partnerlogo19" class="thumb"></a></li>
                        <li><a href=""><img src="img/partnerlogo/logo20.png" alt="partnerlogo20" class="thumb"></a></li>
                    </ul>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>

</html>