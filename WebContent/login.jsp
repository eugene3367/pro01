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

        .page_title {
            padding-top: 1em;
        }

        .home {
            color: rgb(0, 0, 0);
        }

        .form_fr {
            border: 2px solid rgb(76, 144, 221);
            padding: 24px;
            width: 500px;
            height: 150px;
            margin: 50px auto;
        }

        .frm_tb {
            display: table;
            padding-top: 20px;
        }

        .frm_tb li {
            display: table-row;
        }

        .frm_tb .th,
        .frm_tb .td,
        .frm_tb .th2,
        .frm_tb .tb2 {
            display: table-cell;
        }

        .frm_tb .th {
            width: 200px;
            text-align: center;
        }

        .frm_tb .td {
            width: 200px;
        }

        .frm_tb .th2,
        .frm_tb .td2 {
            width: 200px;
            margin-top: 20px;
        }

        .frm_tb label::before {
            content: "* ";
        }

        .in_dt {
            background-color: #fff;
            height: 25px;
            line-height: 25px;
            width: 200px;
            color: blue;
            font-size: 16px;
            text-indent: 0.5em;
            margin-top: 5px;
        }

        .in_btn {
            display: block;
            background-color: rgb(225, 222, 248);
            min-width: 125px;
            height: 32px;
            line-height: 32px;
            border-radius: 20px;
            float: left;
            margin-left: 70px;
            cursor: pointer;
            color: black;
            margin-top: 5px;
        }

        .in_btn:hover {
            background-color: rgb(182, 174, 231);
        }

        /* footer.css */
    </style>
    <link rel="stylesheet" href="footer.css">

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
                    <span class="sel">로그인</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">로그인</h2>
                    <div class="form_fr">
                        <form name="frm1" action="loginPro.jsp" method="post" id="loginForm" class="frm">
                            <ul class="frm_tb">
                                <li>
                                    <div class="th"><label for="id">아이디</label></div>
                                    <div class="td">
                                        <input type="text" id="id" name="id" class="in_dt" required autofocus>
                                    </div>
                                </li>
                                <li>
                                    <div class="th"><label for="pw">비밀번호</label></div>
                                    <div class="td">
                                        <input type="password" id="pw" name="pw" class="in_dt" required>
                                    </div>
                                </li>
                                <li>
                                    <div class="th2"><button type="submit" class="in_btn">로그인</button></div>
                                    <div class="td2"><button type="reset" class="in_btn">취소</button></div>
                                </li>
                            </ul>
                        </form>
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