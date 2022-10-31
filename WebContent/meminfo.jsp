<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
%>
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
            width: 600px;
            height: 300px;
            margin: 50px auto;
        }

        .frm_tb {
            display: table;
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
            width: 360px;
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
            width: 315px;
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
        	<%@ include file="nav.jsp"%>            
        </header>
        <div class="content">
            <figure class="vs">
                <img src="img/baner/company.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <span class="sel">회원정보</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">회원정보</h2>
                    <%@ include file="connectionPool.conf" %>
					<%
					sql = "select * from membera where id=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, sid);
					//select된 데이터가 없으면, rs=null이 됨
					rs = pstmt.executeQuery();
					//int cnt = pstmt.executeUpdate();
					
					if(rs.next()){
						
					%>
                    <div class="form_fr">
                        <form name="frm1" action="memModifyPro.jsp" method="post" id="loginForm" class="frm" onsubmit="return joinAlert(this)">
                            <ul class="frm_tb">
                                <li>
                                    <div class="th"><label for="id" >아이디</label></div>
                                    <div class="td">
                                        <input type="text" id="id" name="id" class="in_dt" style="display:block; float: left" value='<%=rs.getString("id") %>' required autofocus>                                        
                                    </div>
                                </li>
                                <li>
                                    <div class="th"><label for="pw">비밀번호</label></div>
                                    <div class="td">
                                        <input type="password" id="pw" name="pw" class="in_dt" value='<%=rs.getString("pw") %>' placeholder="영문숫자특수문자를 혼합하여 8글자 이상" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
                                    </div>
                                </li>
                                <li>
                                    <div class="th"><label for="pw2">비밀번호 확인</label></div>
                                    <div class="td">
                                        <input type="password" id="pw2" name="pw2" class="in_dt" placeholder="영문숫자특수문자를 혼합하여 8글자 이상" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" required>
                                    </div>
                                </li>
                                <li>
                                    <div class="th"><label for="name">이름</label></div>
                                    <div class="td">
                                        <input type="text" id="name" name="name" class="in_dt" value='<%=rs.getString("name") %>' placeholder="한글 이름 입력" pattern="\[^(가-힣)]\" required>
                                    </div>
                                </li>
                                <li>
                                    <div class="th"><label for="email">이메일</label></div>
                                    <div class="td">
                                        <input type="email" id="email" name="email" class="in_dt" value='<%=rs.getString("email") %>' required pattern=".+@naver\.com" placeholder="naver 메일 주소 입력">
                                    </div>
                                </li>
                                <li>
                                    <div class="th"><label for="tel">전화번호</label></div>
                                    <div class="td">
                                        <input type="tel" id="tel" name="tel" class="in_dt" value='<%=rs.getString("tel") %>' pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required>
                                    </div>
                                </li>
                                <li>
                                    <div class="th2"><button type="submit" class="in_btn">회원 정보 수정</button></div>
                                    <div class="td2"><button type="reset" class="in_btn">취소</button></div>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
                <script>
                function joinAlert(f){
                	if(f.pw.value!=f.pw2.value){
                		alert("비밀번호의 비밀번호 확인이 서로 일치하지 않습니다.");
                		return false;
                	}                	
                }               
                </script>
                <%
				}
				%>
				<%@ include file="connectionClose.conf" %>
            </section>
        </div>
        <footer class="ft">
        	<%@ include file="footer.jsp" %>            
        </footer>
    </div>
</body>

</html>