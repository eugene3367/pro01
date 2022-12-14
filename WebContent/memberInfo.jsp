<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = request.getParameter("id");
	String upw = "";
	String uname = "";
	String uemail = "";
	String utel = "";
	String uregdate = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from MEMBERA where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, uid);
		//select된 데이터가 없으면, rs=null이 됨
		rs = pstmt.executeQuery();
		//int cnt = pstmt.executeUpdate();
		
		if(rs.next()){
			upw = rs.getString("pw");
			uname = rs.getString("name");
			uemail = rs.getString("email");
			utel = rs.getString("tel");
			uregdate = rs.getString("regdate");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>
<!DOCTYPE html>
<html>
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
            width: 500px;
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
            margin-left: 50px;
        }

        .noti_num {
            width: 80px;
            text-align: center;
        }

        .noti_tit {
            width: 300px;
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
                <img src="img/baner/custom.jpg" alt="비주얼">
            </figure>
            <div class="bread">
                <div class="bread_fr">
                    <a href="index.html" class="home">HOME</a> &gt;
                    <span class="sel">회원정보</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">회원정보</h2>
                    <ul class="noti_lst">
                        <li>
	                        <span class="noti_num">아이디</span>
	                        <span class="noti_tit"><%=uid %></span>	                      
	                    </li>   
	                    <li>
	                        <span class="noti_num">비밀번호</span>
	                        <span class="noti_tit"><%=upw %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">이름</span>
	                        <span class="noti_tit"><%=uname %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">이메일</span>
	                        <span class="noti_tit"><%=uemail %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">전화번호</span>
	                        <span class="noti_tit"><%=utel %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">가입일</span>
	                        <span class="noti_tit"><%=uregdate %></span>	                      
	                    </li>                
                    </ul>
                    <a href="memList.jsp">회원 목록</a>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>