<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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

        .page_title {
            padding-top: 1em;
        }

        .home {
            color: rgb(0, 0, 0);
        }

        .frm {
            padding: 24px;
            width: 1200px;
            margin: 50px auto;
        }

        .sitemap_area {
            width: 930px;
            margin: 30px auto;
        }

        .menu {
            clear: both;
            padding-bottom: 100px;
            border-top: 1px solid #333;
        }

        .menu:after {
            content: "";
            display: block;
            clear: both;
        }

        .menu>li {
            float: left;
            width: 20%;
        }

        .menu>li>a.dp1 {
            display: block;
            line-height: 48px;
            font-size: 20px;
            color: black;
            font-weight: bold;
            padding-top: 20px;
        }

        .menu .sub li {
            clear: both;
            padding-left: 16px;
        }

        .menu .sub li a {
            display: block;
            color: black;
            font-size: 16px;
            line-height: 30px;
        }

        .menu .sub li a:hover {
            text-decoration: underline;
            color: rgb(37, 37, 119);
        }

        .menu2::before {
            content: "보조 메뉴";
            display: block;
            clear: both;
            font-size: 20px;
            font-weight: bold;
            padding-bottom: 20px;
            padding-top: 20px;
        }

        .menu2 li {
            float: left;
            line-height: 30px;
            padding-left: 16px;
        }

        .menu2 li a {
            display: block;
            color: black;
        }

        .menu2 li a:hover {
            text-decoration: underline;
            color: rgb(37, 37, 119);
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
        <div class="content">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <span class="sel">사이트맵</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">사이트맵</h2>
                    <div class="frm">
                        <nav class="sitemap_area">
                            <ul class="menu menu1">
                                <li class="item1">
                                    <a href="" class="dp1">회사소개</a>
                                    <ul class="sub">
                                        <li><a href="company.html#page1">비전</a></li>
                                        <li><a href="company.html#page2">대표이사 메세지</a></li>
                                        <li><a href="company.html#page3">포스코 CI</a></li>
                                    </ul>
                                </li>
                                <li class="item2">
                                    <a href="" class="dp1">제품</a>
                                    <ul class="sub">
                                        <li><a href="product.html#page1">자동차</a></li>
                                        <li><a href="product.html#page2">건설</a></li>
                                        <li><a href="product.html#page3">에너지</a></li>
                                    </ul>
                                </li>
                                <li class="item3">
                                    <a href="" class="dp1">ESG</a>
                                    <ul class="sub">
                                        <li><a href="esg.html#page1">Environment</a></li>
                                        <li><a href="esg.html#page2">Social</a></li>
                                        <li><a href="esg.html#page3">Government</a></li>
                                    </ul>
                                </li>
                                <li class="item4">
                                    <a href="" class="dp1">홍보채널</a>
                                    <ul class="sub">
                                        <li><a href="ad.html#page1">미디어라이브러리</a></li>
                                        <li><a href="ad.html#page2">문화행사</a></li>
                                        <li><a href="ad.html#page3">견학신청</a></li>
                                    </ul>
                                </li>
                                <li class="item5">
                                    <a href="" class="dp1">고객지원</a>
                                    <ul class="sub">
                                        <li><a href="custom.html#page1">공지사항</a></li>
                                        <li><a href="custom.html#page2">FAQ</a></li>
                                        <li><a href="custom.html#page3">오시는길</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="menu menu2">
                                <li><a href="login.html">로그인</a></li>
                                <li><a href="join.html">회원가입</a></li>
                                <li><a href="sitemap.html">사이트맵</a></li>
                                <li><a href="member01.html" class="dpc">개인정보처리방침</a></li>
                                <li><a href="member01.htm2" class="dpc">이용약관</a></li>
                                <li><a href="member01.htm3">이메일무단수집거부</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </section>
        </div>
        <footer class="ft">
       		<%@ include file="footer.jsp" %>            
        </footer>
    </div>
</body>

</html>