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
            padding-bottom: 3em;
        }

        .home {
            color: rgb(0, 0, 0);
        }

        .item {
            padding-bottom: 8em;
        }

        .item>h3,
        .item>img {
            padding-bottom: 2em;
        }

        .item>img {
            display: block;
            margin: auto;
        }

        .img_rep {
            float: left;
            margin-left: 8em;
        }

        .img_rep img {
            width: 150px;
        }

        .rep_com {
            width: 800px;
            float: right;
            white-space: pre-wrap;
        }

        .ci {
            padding-bottom: 30px;
        }

        .ci li {
            padding-bottom: 80px;
        }

        .ci li h3 {
            padding-bottom: 20px;
        }

        .ci_img {
            padding-bottom: 30px;
        }

        .ci_img img {
            padding-left: 20px;
        }

        .space1 {
            float: left;
            padding-left: 20px;
        }

        .space2 {
            float: right;
            padding-left: 20px;
        }

        .space:after {
            content: "";
            display: block;
            clear: both;
            padding-bottom: 30px;
        }

        .trust img {
            display: block;
            margin: 0 auto;
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
        $(document).ready(function () {
            $(".to_top").attr("href", location.href);
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
                <img src="img/baner/company.jpg" alt="?????????">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel1" id="sel1" class="sel">
                        <option>????????????</option>
                        <option value="product.html#page1">??????</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">????????????</option>
                        <option value="custom.html#page1">????????????</option>
                    </select> &gt;
                    <select name="sel2" id="sel2" class="sel">
                        <option>??????</option>
                        <option value="company.html#page2">???????????? ?????????</option>
                        <option value="company.html#page3">????????? CI</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">??????</h2>
                    <ul>
                        <li class="item">
                            <h3>????????? ????????????</h3>
                            <img src="img/content/company/1.jpg" alt="????????? ????????????">
                            <p class="pg_com">???????????? '????????? ?????? ???????????? ????????????'??? ???????????????. ????????? ???????????? ?????? ???????????? ????????? ?????? ?????????, ??????, ??????, ?????????,
                                ?????????, ???????????? ??? ?????? ?????????????????? ????????? ?????? ????????????, ????????? ??????, ????????? ????????? ?????? ????????? ???????????? ?????????.</p>
                        </li>
                        <li class="item">
                            <h3>????????????</h3>
                            <img src="img/content/company/2.jpg" alt="????????????">
                            <p class="pg_com">????????? ?????? ???????????? ???????????? ????????? ?????? ?????? With??? ????????? ??????????????? ???????????? ?????? W??? ??? ????????? ?????? ????????? ?????? ?????????
                                ??????????????? ????????? ???????????? ????????? ???????????? ?????????????????????. ????????? ??????????????? ?????? ???????????? ?????? ???????????? ???????????????.</p>
                        </li>
                        <li class="item">
                            <h3>????????????</h3>
                            <img src="img/content/company/3.jpg" alt="????????????">
                            <p class="pg_com">???????????? ???????????? ?????? Win-Win ??? ??? ?????? ??????????????? ???????????? ????????? ?????????????????? ????????????, ?????????????????? ???????????? ????????? ??????
                                ????????? ?????? ???????????? ????????? ??????????????? ????????????, ????????? ????????? ??????????????? ???????????? ????????? ????????? ????????? ????????? ??????????????????.</p>
                        </li>
                    </ul>
                </div>
            </section>
        </div>
        <div class="content" id="page2">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="?????????">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel3" id="sel3" class="sel">
                        <option>????????????</option>
                        <option value="product.html#page1">??????</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">????????????</option>
                        <option value="custom.html#page1">????????????</option>
                    </select> &gt;
                    <select name="sel4" id="sel4" class="sel">
                        <option>???????????? ?????????</option>
                        <option value="company.html#page1">??????</option>
                        <option value="company.html#page3">????????? CI</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">???????????? ?????????</h2>
                    <span class="page_con">
                        <div class="img_rep">
                            <img src="img/content/company/4.png" alt="????????????">
                        </div>
                        <div class="rep_com">
                            <p>
                                <h3>???1??? ????????? ???????????? ?????????</h3>
                                <h4>???????????? ????????? ????????? ?????????!</h4>

???????????? ???????????? ?????? ?????? ?????????, ?????????, ?????????
????????? ???????????? ????????? ?????????!

?????? ????????? ???????????? ????????? ??????
????????? ????????? 100??? ???????????? ??? ??????
???????????? ????????? ???????????? ??? ????????????.

?????? ??? ????????? ?????????
????????? ???????????? ???????????? ?????? ???????????? ?????? ????????? ?????? ??????
?????? ?????? ????????? ?????? ????????? ???????????? ????????????.

<h4>????????? ????????? ?????????!</h4>
50?????? ????????? ??????
100??? ???????????? ?????? ?????? ?????????
??? ?????? ???????????? ??????, ?????????, ??????, ???????????? ?????????
????????? ??????????????? ??????????????????.

???????????????????? ???????????? ?????????,
????????? ?????? ?????? ????????? ?????? ??????,
???????? ????????? ?????? ???????????? ????????? ????????? ?????????,
AI/Big Data??? ???????????? Digitalization????????? ???
??????, ??????, ?????? ??? ????????? ????????? Transition????????? ????????????
??? ?????? ???????????? ????????? ?????? ????????? ????????? ????????????.

?????? ????????? ????????????????????? ???????????? ??????????????????
????????? ??? ?????? ????????? ?????? ????????? ???????????? ????????????.

????????? ?????? ?????? ????????? ?????????????????? ???????????? ????????????
?????? Speedy??? ??????????????? ????????? ??????????????? ????????????,
??????????????? ????????? ?????? ????????? ??????????????? ????????????
???????????? ????????? ??? ????????? ????????? ?????????.
?????? ???????????? ????????? ??????
????????? ??????????????? ????????? ???????????? ???????????????.

????????? ?????? ?????? ?????? ??? ?????? ????????? ?????????
????????? ?????? ???????????? ???????????? ???????????? ?????????,
?????? ?????? ???????????? ????????? ???????????? ?????????????????????
??? 2??? ????????? ?????? ????????? ???????????????.

?????? ?????? ????????? ??????????????? ?????? ???????????? ?????????
????????? ???????????? ???????????? ?????? ?????? ????????? ????????? ?????? ?????????!
????????? ????????? ?????????, ?????????, ???????????? ??? ??????????????????
????????? ?????? ???????????? ???????????? ?????????!

????????? ?????? ??????
?????? ????????? 100??? ???????????? POSCO??? ??????????????? ?????????.

?????? ??????,
??????, ????????? ?????? ?????? ????????? ??????????????? ?????????????????????.

????????? ?????? ????????? ?????? ???????????? ?????? ???????????? ?????????
????????? ???????????????.

??? ???????????? ????????? ????????? ?????? ??? ????????? ??? ??????????????? ?????????
?????? ??? ??????????????? ???????????? ???????????? ???????????????
??????????????? ?????????, ???????????????????????? ?????????????????? ???????????????.

????????? ???????????? ?????? ????????? ????????????,
????????? ????????? ????????? ????????? ?????? ?????????
?????????????????? ??????????????? ???????????????.

????????? ?????? ????????? ?????? ????????? ?????? ???????????????.
??????, ??????, ?????? ????????? ????????????
?????? ????????? ????????? ?????? ?????????
????????? ??????????????? ???????????? ?????? ???????????????
???????????? ?????? ????????? ??????????????? ????????? ????????????
?????? ????????? ?????????????????? ???????????????.
????????????????????? ?????? ????????? ?????? ?????????????????? ????????????.

??????, 2050 ???????????? ?????? ?????? ??????
???????????????????? ??????????????? ?????????????????????.

HMR ?????? ??? ????????? ?????? ??? ?????? ???????????? ????????????,
????????? ????????? ?????? ????????? ?????? ?????????
??????????????? ???????????? ?????? ??????????????? ??????, ????????? ?????? ??????
????????????, ?????????????????? ??????????????? ???????????????
2050 ?????? ?????? ????????? ????????? ??????????????????.

?????? ???????????? ?????????, HBI ??? ????????? ????????????
??????????????? ???????????? ??? ????????? ?????? ?????????
???????????? ????????????????????????.

????????? ?????? ???????????? ???????????? ?????? ?????? ???????????????
????????? ?????????????????? ????????? ??? ?????????
???????????? ???????????? ????????? ????????? ??????????????? ????????????,
?????? ?????? ?????? ????????? ?????? ????????? ???????????? ??????
?????? ?????? ????????? ????????? ???????????? ??????????????? ???????????????.

??????, ?????? ????????? ????????? Smart ???????????? ?????????????????????.

????????? Smart ???????????? ????????? ??????
???????????? ???????????? ???????????????,
?????? ?????? ?????? ??? ???????????? ????????? ?????? ?????? ?????????
????????? ????????? ????????????,
????????? ?????? ?????? ???????????? ?????????
Digital Twin ??? Smart Factory 2.0 ????????? ??????
????????? ????????? ????????? ??? ?????? ?????????????????? ???????????? ???????????????.

????????? ???????????????
?????? ???????????? ???????????? ??????
K-Steel ????????? ??????, ????????? ?????? ?????? ?????????
?????? Market Share??? ????????? ??????,
PosMAC, Gigasteel, INNOVILT, ???Mn??? ???
????????? ?????? ????????? ????????? ????????????
???????????? ?????? ???????????? ???????????????.

????????? ??????, ??????, ?????? ?????? ????????????
???????????? ?????? ????????? ???????????? ???????????????
?????? ?????? ??? ????????? ?????? Risk??? ????????????,
JIT ???????????? ?????? ??? ?????? ???????????? ????????????
?????? ???????????? ???????????? ???????????????.

?????????????????????
??????,??????,?????? ??? ?????????????????? ????????? ??????????????? ????????? ?????? ?????????????? ????????? ????????? ???????????????
??????????????? ???????????? ????????????????????? ????????? ??????,
Global ??????????????? ???????????? ??????????????? ???????????????.

??????, ????????? ????????? ???????????? ???????????? ?????? ???????????????
??????????????? ????????? ??????????????????.

??????????????? ???????????? ????????? ??????????????? ????????????
?????? ??????????????? ?????????????????? ?????????
????????? ?????????????????? ????????????
Soft, Skill, Smart ??? 3S??? ??????????????? ???????????? ?????????.

???????????? ???????????? Soft ??????????????? ????????????,
AI ??? IT ????????? ?????? Skill??? ????????? ????????? ????????????,
????????? ????????? ?????????
????????? ????????? ????????? Smart?????? ???????????? ???????????????.

?????? ????????? ????????? ???????????? ?????????
?????? ????????? ????????? ???????????? ????????????,
?????? ????????? ???????????? ????????? Silo??? ????????????
????????? ?????? ????????? ?????? ?????? ????????? ???????????? ?????????.

????????? ???????????? ????????? ??????
???????????? ???????????? ????????? ????????? ????????? ?????????,
???????????? ?????? ????????? ?????? ??????????????? ????????????
100??? ?????? ???????????? ????????? ???????????? ?????????.

?????????, ????????????????????? ????????? ??????
???????????? ????????? ESG ????????? ????????? ??????????????????.

??????????????? ?????????????????????????????? ????????? ??????
???????????? ?????? ????????? ????????? ?????????
?????? ??????????????? ???????????? ???????????? ????????? ?????? ????????????
????????? ????????? ????????? ?????????
??? ????????? ????????? ?????? ????????? ????????? ???????????? ???????????????.

????????? ????????? ????????? ?????? ?????? ?????? ???????????? ??? ???????????????
???????????? ?????? ?????? ????????? ???????????? ?????? ?????? ??????????????? ????????????
????????? ????????? ????????? ??????????????? ????????? ???????????? ?????? ?????? ???
????????????????????? ?????? ???????????? ????????? ?????????
???????????? ?????? ????????? ??????????????? ?????? ????????? ?????? ????????????.
???????????? ????????? ?????????!

?????? ?????? ???????????????
???????????? ???????????? ???????????? ????????? ????????? ?????? ?????????.

???????????? ??????????????? ????????? ??????????????? ??????????????? ?????? ?????????
?????? ???????????? ????????????????????? ???????????? ????????? ???????????? ???????????????
?????? ?????????????????? ????????? ??? ?????? ???????????? ????????? ???????????????.

????????? ?????? ????????? ?????????????????? ????????????
?????? ??????????????? ????????? ????????? ?????????
??? ???????????? ????????? ????????? ????????? ??????
?????? ?????? ???????????????.

????????? 50??? ??? ??????????????? ???????????? ??? ??????????????? ????????????
????????? ??? ?????????, ????????? ???????????? ?????????
?????? ?????? ?????? ????????? ???????????????.

???????????????.



                                                                                    2022??? 3??? 2???
                                                                                    ????????? ???????????? ????????? ?????????

                            </p>
                        </div>
                    </span>
                </div>
            </section>
        </div>
        <div class="content" id="page3">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="?????????">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <select name="sel5" id="sel5" class="sel">
                        <option>????????????</option>
                        <option value="product.html#page1">??????</option>
                        <option value="esg.html#page1">EGS</option>
                        <option value="ad.html#page1">????????????</option>
                        <option value="custom.html#page1">????????????</option>
                    </select> &gt;
                    <select name="sel6" id="sel6" class="sel">
                        <option>????????? CI</option>
                        <option value="company.html#page1">??????</option>
                        <option value="company.html#page2">???????????? ?????????</option>
                    </select>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">????????? CI</h2>
                    <ul class="ci">
                        <li>
                            <h3>???????????? ????????????</h3>
                            <div class="ci_img">
                                <img src="img/content/company/5.png" alt="???????????? ????????????">
                                <img src="img/content/company/6.png" alt="???????????? ????????????2">
                            </div>
                            <p class="pg_com">?????? POSCO??? ?????? ??? ???????????? ???S?????? ???????????? ??????????????? ?????????, ??????????? ????????? ????????? ???????????? ??????????????? ???????????????
                                ???????????????. ????????? ????????? ????????? ??????????????? ??????????????? ???????????? ???????????? ????????? ?????? ??????????????? ???????????? ???????????? ???????????? ?????????????????????.</p></span>
                        </li>
                        <li>
                            <h3>???????????? ????????????</h3>
                            <div class="space">
                                <div class="space1">
                                    <h4>?????? ?????? ??????</h4>
                                    <img src="img/content/company/7.png" alt="?????? ?????? ??????">
                                </div>
                                <div class="space2">
                                    <h4>?????? ?????? ??????</h4>
                                    <img src="img/content/company/8.png" alt="?????? ?????? ??????">
                                </div>
                            </div>
                            <p class="pg_com">POSCO ??????????????? ???????????? ????????? ????????? ????????? ?????? ????????? ?????? ???????????? ?????? ????????? ?????? ???????????? ????????????.</p>
                        </li>
                        <li>
                            <h3>????????? ?????????</h3>
                            <div class="trust">
                                <img src="img/content/company/9.png" alt="????????? ?????????">
                            </div>
                        </li>
                    </ul>
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
    <a href="" class="to_top">???</a>
    <!--.to_top.on-->
</body>

</html>