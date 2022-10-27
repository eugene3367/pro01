<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
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
            height: 400px;
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
        
        .btn.primary{
		    display: block;
		    float: left;
		    background-color: rgb(225, 222, 248);
		    width: 100px;
		    line-height: 40px;
		    border-radius: 20px;
		    cursor: pointer;
		    color: black;
		    margin-top: 20px;
		    margin-left: 20px;
		    font-weight: 700;
		    text-align: center;
		    }
		        

        /* footer.css */
    </style>
    <link rel="stylesheet" href="footer.css">
</head>
<body>
<%@ include file="connectionPool.conf" %>
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
                    <a href="index.jsp" class="home">HOME</a> &gt;
                    <span class="sel">FAQ 보기</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">FAQ 글보기</h2>
<%
		sql = "select * from faqa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		String author = ""; 
		if(rs.next()){
%>                    
                    <ul class="noti_lst">
                    	<li>
	                        <span class="noti_num">구분</span>
	                        <span class="noti_tit">
	                        <%
								if(rs.getInt("gubun")==0){
									out.println("질문");
								} else {
									out.println("답변");
								}
							%>
	                        </span>	                      
	                    </li>  
	                    <li>
	                        <span class="noti_num">제목</span>
	                        <span class="noti_tit"><%=rs.getString("title") %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">내용</span>
	                        <span class="noti_tit"><%=rs.getString("content") %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">작성자</span>
	                        <span class="noti_tit"><%=rs.getString("nm") %></span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">작성자</span>
	                        <span class="noti_tit">관리자</span>	                      
	                    </li>
	                    <li>
	                        <span class="noti_num">작성일</span>
	                        <span class="noti_tit"><%=rs.getString("resdate") %></span>	                      
	                    </li> 
	                    <div class="btn_group">
						<a href="faq.jsp" class="btn primary">FAQ 목록</a>
						<%
							if(sid.equals("keg")) {
						%>
						<a href='faqModify.jsp?no=<%=no %>' class="btn primary">글 수정</a>
						<a href='faqDel.jsp?no=<%=no %>' class="btn primary">글 삭제</a>
						<% } %>
					</div>             
                    </ul>
                    <% } %>

                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
<%@ include file="connectionClose.conf" %>
</body>
</html>