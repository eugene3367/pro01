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

        .noti_lst {
            display: block;
            margin: 80px auto;
            width: 1000px;
            height: 800px;
        }

        .noti_lst li {
            clear: both;
            height: 55px;
            line-height: 32px;
            border-bottom: 2px solid rgb(157, 175, 212);
            box-sizing: border-box;
        }

        .noti_lst li:first-child {
            border-top: 3px solid #333;
        }

        .noti_lst li span {
            display: block;
            box-sizing: border-box;
            float: left;
            line-height: 50px;
            font-size: 20px;
        }

        .noti_num {
            width: 80px;
            text-align: center;
        }

        .noti_tit {
            width: 700px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .item_hd {
            font-weight: 700;
        }

        .noti_tit.item_hd {
            text-align: center;
        }

        .noti_tit a {
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            padding-right: 12px;
            color: #333;
        }

        .noti_auth {
            width: 100px;
            text-align: center;
        }

        .noti_date {
            width: 120px;
            text-align: center;
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

        .map {
            margin: 50px auto;
            display: block;
            background-color: rgb(219, 230, 241);
            padding-bottom: 30px;
        }

        .map>img {
            width: 100%;
        }

        .map_com {
            padding-top: 25px;
            padding-left: 60px;
        }

        .map p {
            float: left;
        }

        .map h4 {
            display: inline;
            margin-left: 20px;
        }

        .map2 {
            clear: both;
            display: block;
            width: 100%;
            height: auto;
            margin-top: 70px;
            margin-bottom: 100px;
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
                <img src="img/baner/custom.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">ESG</option>
                        <option value="ad.html#page1">홍보채널</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>공지사항</option>
                        <option value="custom.html#page2">FAQ</option>
                        <option value="custom.html#page3">오시는길</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">공지사항</h2>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">번호</span>
                            <span class="noti_tit item_hd">제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                        <li><span class="noti_num">1</span><span class="noti_tit"><a href="">글 제목1</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">2</span><span class="noti_tit"><a href="">글 제목2</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">3</span><span class="noti_tit"><a href="">글 제목3</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">4</span><span class="noti_tit"><a href="">글 제목4</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">5</span><span class="noti_tit"><a href="">글 제목5</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">6</span><span class="noti_tit"><a href="">글 제목6</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">7</span><span class="noti_tit"><a href="">글 제목7</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">8</span><span class="noti_tit"><a href="">글 제목8</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">9</span><span class="noti_tit"><a href="">글 제목9</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">10</span><span class="noti_tit"><a href="">글 제목10</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                    </ul>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="img/baner/custom.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">ESG</option>
                        <option value="ad.html#page1">홍보채널</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option>FAQ</option>
                        <option value="custom.html#page1">공지사항</option>
                        <option value="custom.html#page3">오시는길</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">FAQ</h2>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">번호</span>
                            <span class="noti_tit item_hd">제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                        <li><span class="noti_num">1</span><span class="noti_tit"><a href="">글 제목1</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">2</span><span class="noti_tit"><a href="">글 제목2</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">3</span><span class="noti_tit"><a href="">글 제목3</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">4</span><span class="noti_tit"><a href="">글 제목4</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">5</span><span class="noti_tit"><a href="">글 제목5</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">6</span><span class="noti_tit"><a href="">글 제목6</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">7</span><span class="noti_tit"><a href="">글 제목7</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">8</span><span class="noti_tit"><a href="">글 제목8</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">9</span><span class="noti_tit"><a href="">글 제목9</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                        <li><span class="noti_num">10</span><span class="noti_tit"><a href="">글 제목10</a></span><span
                                class="noti_auth">고유진</span><span class="noti_date">2022-10-19</span></li>
                    </ul>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="img/baner/custom.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>고객지원</option>
                        <option value="company.html#page1">회사소개</option>
                        <option value="product.html#page1">제품</option>
                        <option value="esg.html#page1">ESG</option>
                        <option value="ad.html#page1">홍보채널</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option>오시는길</option>
                        <option value="custom.html#page1">공지사항</option>
                        <option value="custom.html#page2">FAQ</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">오시는길</h2>
                    <div class="map">
                        <img src="img/content/custom/1.jpg" alt="">
                        <div class="map_com">
                            <p><img src="img/content/custom/2.png" alt="">
                                <p>
                                    <h4>문의처</h4> 054-220-0114
                                </p>
                                <p>
                                    <h4>FAX</h4> 054-220-6000
                                </p>
                        </div>
                    </div>
                    <div class="map2">
                        <!-- * 카카오맵 - 지도퍼가기 -->
                        <!-- 1. 지도 노드 -->
                        <div id="daumRoughmapContainer1666167111075"
                            class="root_daum_roughmap root_daum_roughmap_landing"></div>

                        <!--
	2. 설치 스크립트
	* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
-->
                        <script charset="UTF-8" class="daum_roughmap_loader_script"
                            src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                        <!-- 3. 실행 스크립트 -->
                        <script charset="UTF-8">
                            new daum.roughmap.Lander({
                                "timestamp": "1666167111075",
                                "key": "2c4ki",
                                "mapWidth": "1200",
                                "mapHeight": "auto"
                            }).render();
                        </script>
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