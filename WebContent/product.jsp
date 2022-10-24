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
            border-bottom: 3px solid rgb(129, 175, 219);
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
            color: rgb(0, 0, 0);
        }

        .car {
            padding-top: 70px;
        }

        .car img {
            float: left;
        }

        .car_com {
            float: right;
            width: 800px;
            white-space: pre-wrap;
        }

        .car_com h3 {
            font-size: 2.5em;
        }

        .car_vid {
            clear: both;
            display: block;
            width: 330px;
            height: 195px;
            margin-top: 280px;
            background-color: rgb(72, 72, 192);
            border-radius: 10px;
        }

        .car iframe {
            width: 100%;
            height: auto;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .car_vid p {
            color: aliceblue;
            text-align: center;
            line-height: 35px;
        }

        .str {
            padding-top: 70px;
        }

        .str img {
            float: left;
        }

        .str_com {
            float: right;
            width: 800px;
            white-space: pre-wrap;
        }

        .str_com h3 {
            font-size: 2.5em;
        }

        .ene {
            padding-top: 70px;
        }

        .ene img {
            float: left;
        }

        .ene_com {
            float: right;
            width: 800px;
            white-space: pre-wrap;
        }

        .ene_com h3 {
            font-size: 2.5em;
        }

        .ene_vid {
            clear: both;
            display: block;
            width: 330px;
            height: 195px;
            margin-top: 280px;
            background-color: rgb(72, 72, 192);
            border-radius: 10px;
        }

        .ene iframe {
            width: 100%;
            height: auto;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .ene_vid p {
            color: aliceblue;
            text-align: center;
            line-height: 35px;
        }

        .to_top {
            position: fixed;
            bottom: 80px;
            right: 80px;
            z-index: 999;
            background-color: rgb(211, 153, 44);
            color: black;
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
            background-color: aqua;
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
                <img src="img/baner/product_1.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>제품</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>자동차</option>
                        <option value="product.html#page2">건설</option>
                        <option value="product.html#page3">에너지</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">자동차</h2>
                    <div class="car">
                        <img src="img/content/product/1.jpg" alt="자동차">
                        <div class="car_com">
                            <h3>차체용</h3>
                            <p>차체는 차량 사고 시 충격을 흡수 및 분산하여 탑승자의 안전을 지켜주는 역할을 합니다. 또한 전기차의 경우 배터리 파손을 방지하는 역할도 합니다. 차체는 외판과내판으로 구분되며, 부위에 따라 성형성, 도장성, 선영성, 가공성, 용접성, 내식성 등 다양한 성능이 요구됩니다. 포스코는 차체 부위별로 요구사항을 만족시키는 냉연 제품, 용융도금 제품 등을 생산합니다.</p>
                        </div>
                        <div class="car_vid">
                            <iframe width="708" height="398" src="https://www.youtube.com/embed/g4Cisf8mGVo"
                                title="[POSCO Product] POSCO Automotive steel (stop motion animation)" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <p>자동차강판</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="img/baner/product_2.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>제품</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option>건설</option>
                        <option value="product.html#page1">자동차</option>
                        <option value="product.html#page3">에너지</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">건설</h2>
                    <div class="str">
                        <img src="img/content/product/2.jpg" alt="건설">
                        <div class="str_com">
                            <h3>건축 구조용</h3>
                            <p>더 높이, 더 안전한 건물을 짓기 위해서 여러 형태의 구조시스템이 적용되고, 구조시스템이 더욱 효율적인 성능을 발휘하기 위해서는 강하고, 지진에 잘 견디는 강재를 사용하여 H형강, 강관 등이 제작되어 건물의 주요 구조물에 적용됩니다. 또한, 건물은 소성변형이 허용되는 변형능력, 붕괴 메커니즘의 재현성 및 용접성을 확보한 내진설계를 합니다. 포스코의 건축 구조물용 강재는 내진설계 규정을 만족하는 항복점(Yield Point)과 항복비(Yield Ratio)를 가지며, 후판 및 열연 형태로 공급됩니다.</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="img/baner/product_3.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>제품</option>
                        <option value="product.html#page1">회사소개</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">홍보채널</option>
                        <option value="custom.html#page1">고객지원</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option>에너지</option>
                        <option value="company.html#page1">자동차</option>
                        <option value="company.html#page2">건설</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">에너지</h2>
                    <div class="ene">
                        <img src="img/content/product/3.jpg" alt="에너지">
                        <div class="ene_com">
                            <h3>플랜트 및 저장용</h3>
                            <p>석유 또는 가스를 채굴, 정제, 저장하는 시설인 해양 플랜트, 육상 플랜트, 고압의 저장용기, 보일러, 열 교환기 발전 설비 반응로 등을 제작하는 용도입니다. 열연, 후판, 스테인리스 등 다양한 철강제품이 사용됩니다.</p>
                        </div>
                        <div class="ene_vid">
                            <iframe width="708" height="398" src="https://www.youtube.com/embed/hFvrgQ_CMdA"
                                title="포스코 9% 니켈강이 더 안전하고 경제적인 이유" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                            <p>9%니켈강</p>
                        </div>
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