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
                    <h2 class="page_tit">더불어<br>함께 발전하는<br>기업시민 포스코</h2>
                    <ul class="lst">
                        <li class="left">
                            <iframe name="vdo2" id="vdo2" width="620" height="349"
                                src="https://www.youtube.com/embed/xpOYApHBBu4" title="[포스코 TV광고] 비전 편" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </li>
                        <li class="right">
                            <ul class="ico_lst">
                                <li>
                                    <a href="https://youtu.be/-9CoF03WqVc" target="vdo2" class="icon1">
                                        <h3 class="cate_tit">사회적 거리두기 속 서로의 마음은<br>온(On)택트로 가까이!</h3>
                                        <p class="cate_com">언택트가 아닌 마음을 켜는 온(On)택트로, 지친 일상에 잠깐이라도 웃음을 밝혀드립니다.</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://youtu.be/NJwsPhG2NGI" target="vdo2" class="icon2">
                                        <h3 class="cate_tit">기업, 시민이 되다</h3>
                                        <p class="cate_com">더 좋은 세상을 만들기 위해
                                            함께, 한 걸음 더
                                            기업시민 포스코의 힘을 더합니다</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="https://youtu.be/g8xM9WbZES8" target="vdo2" class="icon3">
                                        <h3 class="cate_tit">I AM #STEELSTRONG</h3>
                                        <p class="cate_com">나는 악바리라 강하다
                                            나는 거침없어 강하다
                                            나는 나다워서 강하다
                                            나는 즐기니까 강하다
                                            나는 겁 없어서 강하다
                                            나는 끈질겨서 강하다
                                            나는 나를 믿기에 강하다!</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page2">
                <div class="page_wrap">
                    <h2 class="page_tit">포스코가 걸어온 50년 역사</h2>
                    <ul class="pic_lst">
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history1.jpg" alt="대한국제제철차관단(KISA) 대표단과 건설추진위원회의 연석회의"
                                    class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1967.10.12</h3>
                                    <p class="pic_tit">대한국제제철차관단(KISA) 대표단과<br> 건설추진위원회의 연석회의</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history2.jpg" alt="포항 4기 종합준공" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1981.02.18</h3>
                                    <p class="pic_tit">포항 4기 종합준공</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history3.jpg" alt="광양CTS 준공" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1986.04.10</h3>
                                    <p class="pic_tit">광양CTS 준공</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history3-1.jpg" alt="코렉스(신제선) 공장 준공" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">1995.11.28</h3>
                                    <p class="pic_tit">코렉스(신제선) 공장 준공</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history4.jpg" alt="미국 포브스지 1999년~2003년 5년 연속 세계 최고 철강사 선정"
                                    class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2003.04.14</h3>
                                    <p class="pic_tit">미국 포브스지 1999년~2003년<br> 5년 연속 세계 최고 철강사 선정</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history5.jpg" alt="포스코역사박물관 개관" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2003.07.03</h3>
                                    <p class="pic_tit">포스코역사박물관 개관</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history7.jpg" alt="동남아 최초 일관밀 크라카타우포스코 준공" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2013.12.23</h3>
                                    <p class="pic_tit">동남아 최초 일관밀 크라카타우포스코 준공</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history8.jpg" alt="세계철강업계 최초 13년 연속 '지속가능경영 우수기업'선정(DJSI)"
                                    class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2017.09.07</h3>
                                    <p class="pic_tit">세계철강업계 최초 13년 연속<br> '지속가능경영 우수기업'선정(DJSI)</p>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="img/poscophoto/history10.jpg" alt="국내기업 최초 ‘등대공장’ 선정 세계경제포럼(WEF)" class="pic">
                                <div class="hv_box">
                                    <h3 class="pic_date">2019.07.01</h3>
                                    <p class="pic_tit">국내기업 최초 ‘등대공장’ 선정<br> 세계경제포럼(WEF)</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>
            <section class="page" id="page3">
                <div class="page_wrap">
                    <h2 class="page_tit">믿고 맡길 수 있는<br>POSCO<br>전문 파트너스</h2>
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