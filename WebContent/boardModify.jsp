<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = "";
	String content = "";
	String uname = "";
	String resdate = "";
	String author = "";
	
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
		sql = "select a.no no, a.title title, a.content content, b.name name, a.resdate resdate, a.author author from boarda a inner join membera b on a.author=b.id where a.no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			title = rs.getString("title");
			content = rs.getString("content");
			uname = rs.getString("name");
			resdate = rs.getString("resdate");
			author = rs.getString("author");
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
            border-top: 2px solid rgb(157, 175, 212);
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
        #content {
    		margin-top: 20px;
		}
        
        #title {        
            background-color: #fff;
            height: 25px;
            line-height: 25px;
            width: 200px;
            color: blue;
            font-size: 16px;
            text-indent: 0.5em;
            margin-top: 5px;
            border: 1px solid black;
        }

        .btn.primary {		    
			display: block;
		    background-color: rgb(225, 222, 248);
		    width: 120px;
		    line-height: 32px;
		    border-radius: 20px;
		    cursor: pointer;
		    color: black;
		    margin-top: 20px;
		    font-weight: 900
        }
        .btn.primary a {
        	color: black;
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
                    <span class="sel">글 수정하기</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">글 수정하기</h2>
                    <form name="frm" action="boardModifyPro.jsp" method="post" class="frm">
	                    <ul class="noti_lst">
	                        <li>
		                        <span class="noti_num">글번호</span>
		                        <span class="noti_tit"><%=no %><input type="hidden" name="no" id="no" value="<%=no %>" readonly></span>	                      
		                    </li>   
		                    <li>
		                        <span class="noti_num">제목</span>
		                        <span class="noti_tit"><input type="text" name="title" id="title" value="<%=title %>" class="in_data" required /></span>	                      
		                    </li>
		                    <li>
		                        <span class="noti_num">내용</span>
		                        <span class="noti_tit"><textarea cols="40" rows="20" name="content" id="content"><%=content %></textarea></span>	                      
		                    </li>
		                    <li>
		                        <span class="noti_num">작성자</span>
		                        <span class="noti_tit"><%=uname %></span>	                      
		                    </li>
		                    <li class="btn_group">
								<span><button type="submit" class="btn primary">글 수정하기</button></span>
								<span><button class="btn primary"><a href="boardList.jsp" >게시판 목록</a></button></span>
							</li>                                
	                    </ul>
					</form>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>