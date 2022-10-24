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
        .hd {
            position: fixed;
        }

        /* content */
        .vs {
            clear: both;
            width: 100%;
            height: 300px;
            overflow: hidden;
        }

        .vs img {
            display: block;
            width: 100%;
            height: auto;
        }

        .bread {
            clear: both;
            width: 100%;
            line-height: 60px;
            border-bottom: 3px solid #eee;
        }

        .bread_fr {
            width: 1200px;
            margin: 0 auto;
        }

        .page {
            clear: both;
            width: 100%;
            min-height: 100vh;
        }

        .page:after {
            content: "";
            display: block;
            clear: both;
        }

        .page_wrap {
            width: 1200px;
            margin: 0 auto;
        }

        .content {
            display: none;
        }

        .content:target {
            display: block;
        }

        .page_wrap {
            padding: 2em;
        }

        .page_title {
            padding-top: 1em;
        }

        .home {
            color: #333;
        }

        .vid {
            padding-top: 50px;
            padding-bottom: 60px;
        }

        .ad_vid {
            display: block;
            width: 350px;
            height: 450px;
            float: left;
            margin-left: 40px;
            background-color: #eee;
        }

        .ad_vid iframe {
            width: 100%;
            height: 195px;
        }

        .ad_vid h4,
        .ad_vid h5 {
            text-align: center;
            padding-top: 40px;
        }

        .ad_vid a {
            display: block;
            width: 100%;
            height: 60px;
            text-align: center;
            margin-top: 95px;
            background-color: rgb(218, 227, 231);
            line-height: 60px;
            color: #05507d;
            font-weight: 600;
        }

        .pic_lst {
            display: block;
            padding-top: 50px;
            padding-bottom: 150px;
            height: 1200px;
        }

        .pic_lst li {
            float: left;
            border: 2px solid rgb(227, 203, 228);
        }

        .pic_lst>li:first-child {
            width: 1200px;
            margin-bottom: 60px;
        }

        .pic_lst>li:first-child a img,
        .box1 {
            float: left;
        }

        .box1 {
            padding: 40px;
            width: 700px;
            color: black;
        }

        .box1 p {
            padding-top: 10px;
        }

        .pic_sec {
            display: block;
            clear: both;
        }

        .pic_sec li {
            width: 370px;
            height: 450px;
            margin-right: 39px;
        }

        .pic_sec li:nth-child(3n) {
            margin-right: 0px;
        }

        .pic_sec li:nth-child(4),
        .pic_sec li:nth-child(5),
        .pic_sec li:nth-child(6) {
            margin-top: 30px;
        }

        .box h3,
        .box p {
            padding: 20px;
            width: 330px;
            color: black;
        }

        .pic_date {
            color: rgb(85, 82, 82);
            font-weight: 900;
        }

        .tri1 img {
            clear: both;
            width: 100%;
        }

        .tri1 {
            position: relative;
        }

        .tri1 h2,
        .tri1 div {
            position: absolute;
            color: #eee;
        }

        .tri1 h2 {
            top: 50px;
            left: 100px;
        }

        .tri1 div {
            top: 80px;
            left: 450px;
            width: 550px;
        }

        .tri1 h4 {
            padding-top: 30px;
        }

        .tri2 {
            margin-top: 50px;
            padding-bottom: 600px;
        }

        .tri2 ul li {
            border: 2px solid rgb(178, 190, 204);
            display: block;
            float: left;
            width: 360px;
            height: 500px;
            margin-right: 54px;
        }

        .tri2 ul li:nth-child(3) {
            margin-right: 0px;
        }

        .tri_box {
            padding: 30px;
            width: 300px;
            color: black;
        }

        .tri_box p {
            padding-top: 20px;
            white-space: pre-wrap;
            height: 70px;
        }

        .tri2 ul li a {
            background-color: rgb(230, 232, 243);
            right: 20px;
            display: block;
            text-align: center;
            height: 51px;
            line-height: 51px;
            color: rgb(53, 50, 50);
            font-weight: 900;
        }





        .to_top {
            position: fixed;
            bottom: 80px;
            right: 80px;
            z-index: 999;
            background-color: rgba(11, 11, 11, 0.75);
            color: #fff;
            display: block;
            width: 60px;
            height: 60px;
            line-height: 60px;
            text-align: center;
            font-size: 20px;
            border-radius: 32px;
            visibility: hidden;
            transition-duration: 0.8s;
        }

        .to_top:hover {
            background-color: deepskyblue;
        }

        .to_top.on {
            visibility: visible;
        }

        /* footer.css */
    </style>
    <link rel="stylesheet" href="footer.css">
    <script>
        $(document), ready(function () {
            $(window).scroll(function () {
                var ht = $(window).height();
                var tp = $(this).scrollTop();
                if (tp >= 300) {
                    $(".to_top").addClass("on");
                    $(".to_top").attr("href", location.href);
                } else {
                    $(".to_top").removeClass("on");
                    $(".to_top").attr("href", location.href);
                }
            });
        });
    </script>
</head>

<body>
    <div class="wrap">
        <header class="hd">
			<%@ include file="nav.jsp" %>
        </header>
        <div class="content" id="page1">
            <figure class="vs">
                <img src="img/baner/ad.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>홍보채널</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">ESG</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>미디어라이브러리</option>
                        <option value="ad.html#page2">문화행사</option>
                        <option value="ad.html#page3">견학신청</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">미디어라이브러리</h2>
                    <div class="vid">
                        <div class="ad_vid" id="vid1">
                            <iframe width="841" height="473" src="https://www.youtube.com/embed/B3D94NsxbKA"
                                title="[홍보영상] 더불어 함께 발전하는 기업시민 포스코(국문, 2022)" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <h4>2022 기업시민 포스코(국문)</h4>
                            <h5>2022 포스코그룹 신규 홍보영상</h5>
                            <a href="https://youtu.be/B3D94NsxbKA"><img src="img/content/ad/12.png" alt=""> 재생</a>
                        </div>
                        <div class="ad_vid" id="vid2">
                            <iframe width="841" height="473" src="https://www.youtube.com/embed/7bNUm9_TpFA"
                                title="[홍보영화] 더불어 함께 발전하는 기업시민 포스코그룹 (국문, 2021)" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <h4>2021 기업시민 포스코(국문)</h4>
                            <h5>2021 포스코그룹 홍보영상</h5>
                            <a href="https://youtu.be/7bNUm9_TpFA"><img src="img/content/ad/12.png" alt=""> 재생</a>
                        </div>
                        <div class="ad_vid" id="vid3">
                            <iframe width="841" height="473" src="https://www.youtube.com/embed/pX0ORt0C4mY"
                                title="POSCO ODYSSEY" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <h4>50주년 기념 POSCO ODYSSEY</h4>
                            <h5>포스코 창립 50주년 기념 홍보영상 (국문, '18년 제작)</h5>
                            <a href="https://youtu.be/pX0ORt0C4mY"><img src="img/content/ad/12.png" alt=""> 재생</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="img/baner/ad.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>홍보채널</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">ESG</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option>문화행사</option>
                        <option value="ad.html#page1">미디어라이브러리</option>
                        <option value="ad.html#page3">견학신청</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">문화행사</h2>
                    <ul class="pic_lst">
                        <li>
                            <a
                                href="https://newsroom.posco.com/kr/2020%eb%85%84%ec%97%90%eb%8f%84-%ea%b8%b0%ec%97%85%ec%8b%9c%eb%af%bc-%ed%8f%ac%ec%8a%a4%ec%bd%94-%eb%ac%b8%ed%99%94%ed%96%89%ec%82%ac%ea%b0%80-%ec%97%ac%eb%9f%ac%eb%b6%84%ea%b3%bc-%ed%95%a8%ea%bb%98/">
                                <img src="img/content/ad/1.jpg" alt="article1" class="pic">
                                <div class="box1">
                                    <h3 class="pic_tit">2020년에도 기업시민 포스코 문화행사가 여러분과 함께 합니다!</h3>
                                    <p>포스코가 2020년에도 고품격 문화행사로 기업시민 경영이념 실천에 앞장선다. 포항·광양 시민들의 마음의 양식을 채워줄 ‘기업시민 포스코
                                        문화콘서트’와 포항·광양·서울 3개 지역에서 동일한 라인업으로 풍성한 볼거리를 제공할 예정인 ‘기업시민 포스코 키즈콘서트’, 대중음악 중심의
                                        ‘기업시민 포스코콘서트’까지. 포스코그룹과 협력사 임직원, 지역주민들을 위해 야심차게 준비한 ‘2020년 기업시민 포스코 문화행사’를
                                        총정리했다.</p>
                                    <p class="pic_date">2020-01-17</p>
                                </div>
                            </a>
                        </li>
                        <div class="pic_sec">
                            <li>
                                <a
                                    href="https://newsroom.posco.com/kr/%ed%8f%ac%ec%8a%a4%ec%bd%94%ec%99%80-%ed%95%a8%ea%bb%98%ed%95%98%eb%8a%94-%eb%ac%b8%ed%99%94%ea%b3%b5%ec%97%b0%ec%9c%bc%eb%a1%9c-%eb%94%b0%eb%9c%bb%ed%95%9c-%ec%97%b0%eb%a7%90-%eb%b3%b4%eb%82%b4/">
                                    <img src="img/content/ad/2.jpg" alt="article2" class="pic">
                                    <div class="box">
                                        <h3 class="pic_tit">포스코와 함께하는 문화공연으로 따뜻한 연말 보내세요</h3>
                                        <p class="pic_date">2019-12-05</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a
                                    href="https://newsroom.posco.com/kr/%ec%a0%9c%ec%b2%a0%ec%86%8c-%ec%9d%b4%ec%9b%83%eb%93%a4%ea%b3%bc-%ed%95%a8%ea%bb%98%ed%96%88%eb%8d%98-%ed%9d%a5%ea%b2%a8%ec%9b%80%ec%9d%98-%eb%84%a4-%eb%b0%95%ec%9e%90-%ed%8a%b8/">
                                    <img src="img/content/ad/3.jpg" alt="article3" class="pic">
                                    <div class="box">
                                        <h3 class="pic_tit">“아따, 겁나게 신나브러!” 제철소 이웃들과 함께했던 ‘네 박자’ 트롯 축제</h3>
                                        <p class="pic_date">2019-10-23</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a
                                    href="https://newsroom.posco.com/kr/%eb%8c%80%ed%95%99%ea%b5%ad%ec%95%85%ec%a0%9c%eb%a5%bc-%ed%8f%ac%ec%8a%a4%ec%bd%94%ec%97%90%ec%84%9c-%ea%b0%9c%ec%b5%9c%ed%95%98%eb%8a%94-%ec%9d%b4%ec%9c%a0/">
                                    <img src="img/content/ad/4.jpg" alt="article4" class="pic">
                                    <div class="box">
                                        <h3 class="pic_tit">국내 유일 ‘대학국악제’를 포스코에서 개최하는 이유</h3>
                                        <p class="pic_date">2019-10-10</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a
                                    href="https://newsroom.posco.com/kr/%eb%af%b8%ec%8a%a4%ed%8a%b8%eb%a1%af-%ed%8f%ac%ec%8a%a4%ec%bd%94%ec%97%90-%eb%9c%ac%eb%8b%a4-%ed%8f%ac%ed%95%ad-%ea%b4%91%ec%96%91-%ec%84%9c%ec%9a%b8%ec%97%90%ec%84%9c-%ec%bd%98%ec%84%9c%ed%8a%b8/">
                                    <img src="img/content/ad/5.jpg" alt="article5" class="pic">
                                    <div class="box">
                                        <h3 class="pic_tit">미스트롯, 포스코에 뜬다! 포항, 광양, 서울에서 공연 개최</h3>
                                        <p class="pic_date">2019-09-24</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a
                                    href="https://newsroom.posco.com/kr/%ed%8f%ac%ec%8a%a4%ec%bd%94-%ed%8f%ac%ed%95%ad%ec%8b%9c-%ec%8b%9c-%ec%8a%b9%ea%b2%a9-70%ec%a3%bc%eb%85%84%ec%9d%84-%ec%b6%95%ed%95%98%ed%95%a9%eb%8b%88%eb%8b%a4-%ea%b0%90%ec%82%ac%ec%bd%98/">
                                    <img src="img/content/ad/6.jpg" alt="article6" class="pic">
                                    <div class="box">
                                        <h3 class="pic_tit">포스코, “포항시 시 승격 70주년을 축하합니다” 감사콘서트 개최</h3>
                                        <p class="pic_date">2019-07-05</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a
                                    href="https://newsroom.posco.com/kr/with-%ec%b2%ad%ec%b6%98-%ed%8f%ac%ec%8a%a4%ec%bd%94-%ec%b2%ad%eb%85%84%ec%9d%84-%ec%9c%84%ed%95%9c-%eb%ac%b8%ed%99%94-%ea%b3%b5%ec%97%b0-%ea%b0%9c%ec%b5%9c/">
                                    <img src="img/content/ad/7.jpg" alt="article7" class="pic">
                                    <div class="box">
                                        <h3 class="pic_tit">With 청춘! 포스코, 청년을 위한 문화 공연 연다</h3>
                                        <p class="pic_date">2019-07-01</p>
                                    </div>
                                </a>
                            </li>
                        </div>
                    </ul>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="img/baner/ad.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>홍보채널</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">ESG</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option>견학신청</option>
                        <option value="ad.html#page1">미디어라이브러리</option>
                        <option value="ad.html#page2">문화행사</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <div class="tri1">
                        <h2 class="page_title">견학안내</h2>
                        <div class="tri1_com">
                            <h3>우리 생활 깊숙이 스며든 철이
                                어떻게 생산되는지,
                                생산된 철은 어떻게 사용되는지
                                궁금하지 않으세요?</h3>
                            <h4>포스코에서는 일반인과 청소년 그리고 관련업계 종사자 여러분을 위한
                                다양한 견학 프로그램을 실시하고 있습니다.</h4>
                        </div>
                        <img src="img/content/ad/8.jpg" alt="">
                    </div>
                    <div class="tri2">
                        <ul>
                            <li>
                                <img src="img/content/ad/9.jpg" alt="Park1538" class="pic">
                                <div class="tri_box">
                                    <h3 class="pic_tit">Park1538</h3>
                                    <p class="pic_com">모두에게 열린 문화공간에서 포스코의 역사와 현재, 미래를 만나보세요.</p>
                                </div>
                                <a href="https://park1538.posco.com:8243/S91/S91D10/web/kor/main/PP-K01-00.do">견학신청
                                    ></a>
                            </li>
                            <li>
                                <img src="img/content/ad/10.jpg" alt="광양제철소" class="pic">
                                <div class="tri_box">
                                    <h3 class="pic_tit">광양제철소</h3>
                                    <p class="pic_com">폭발적으로 증가하는 철강수요에 대응하기 위해 광양만에 450만평 규모로 세워진 제철소</p>
                                </div>
                                <a href="https://www.posco.co.kr/homepage/docs/kor6/jsp/prcenter/tour/s91c3000030n.jsp">견학신청
                                    ></a>
                            </li>
                            <li>
                                <img src="img/content/ad/11.jpg" alt="글로벌 안전센터" class="pic">
                                <div class="tri_box">
                                    <h3 class="pic_tit">글로벌 안전센터</h3>
                                    <p class="pic_com">일상생활 속에서 직면할 수 있는 다양한 위험요소를 통해 해결능력을 향상시키는 체험실습교육장</p>
                                </div>
                                <a href="https://www.posco.co.kr/homepage/docs/kor6/jsp/prcenter/tour/s91c3000030n.jsp">견학신청
                                    ></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <script>
            var sel = document.getElementsByClassName("sel");
            for (var i = 0; i < sel.length; i++) {
                sel[i].addEventListener("change", function () {
                    location.href = this.value;
                });
            }
        </script>
        <footer class="ft">
       		<%@ include file="footer.jsp" %>            
        </footer>
    </div>
    <a href="" class="to_top">↑</a>
    <!--.to_top.on-->
</body>

</html>