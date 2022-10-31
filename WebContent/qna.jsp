<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String uid = (String) session.getAttribute("id");
	if(uid==null){
		uid="guest";	
	}
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	int cnt = 0;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		//질문 및 답변 목록
		sql = "select * from qnaa order by parno desc, lev asc, no asc";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
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
            width: 780px;
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
        .noti_lst li:last-child {
		    border-bottom: 0px;
		}

        .noti_lst li span {
            display: block;
            box-sizing: border-box;
            float: left;
            line-height: 50px;
            font-size: 20px;
        }

        .noti_num {
            min-width: 80px;
    		min-height: 50px;
            text-align: center;
        }

        .noti_tit {
            width: 400px;
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
            width: 200px;
            text-align: center;
        }      
        
        .btn_group {
            display: block;
            background-color: rgb(225, 222, 248);
			width: 120px;
            line-height: 32px;
            border-radius: 20px;
            cursor: pointer;
            color: black;
            margin-top: 20px;
        }

        .btn_group:hover {
            background-color: rgb(182, 174, 231);
        }
        
        .btn.primary {
        	padding-left: 15px;
    		color: black;
    		font-weight: 600;}
    		
    	.page_nation_fr {
		    text-decoration: none;
		    display: block;
		    width: 500px;
		    margin: 0px auto;
		    text-align: center;
		    margin-top: -200px;
		    font-size: 17px;
		    font-weight: 550;
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
                    <span class="sel">질문 및 답변 목록</span>
                </div>
            </div>          
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">질문 및 답변 목록</h2>
                    <ul class="noti_lst">
                        <li>
                            <span class="noti_num item_hd">번호</span>
                            <span class="noti_tit item_hd">제목</span>
                            <span class="noti_auth item_hd">작성자</span>
                            <span class="noti_date item_hd">작성일</span>
                        </li>
                        
        
<%
		while(rs.next()){
			//작성일의 날짜 데이터를 특정 문자열 형식으로 변환
			SimpleDateFormat yymmdd = new SimpleDateFormat("yyyy-MM-dd");
			String date = yymmdd.format(rs.getDate("resdate"));
%>
                        <li>
                        	<% if(rs.getInt("lev")==0){
                        		cnt++; %>
                        	<span class="noti_num"><%=cnt %></span>
                        	<% } else { %>                       	
	                        <span class="noti_num"></span>
	                        <%} %>
	                        
	                        
	                        
<% 
						if(rs.getInt("lev")==0) {
							if(rs.getString("sec").equals("Y")) {
								if(uid.equals(rs.getString("author")) || uid.equals("keg")){
					%>
									<span class="noti_tit"><a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></span>
					<%
								} else {
					%>	
									<span class="noti_tit"><%=rs.getString("title") %></span>
					<%
								}
							} else if(rs.getString("sec").equals("N") && uid!="guest"){
					%>	
									<span class="noti_tit"><a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>'><%=rs.getString("title") %></a></span>
					<%
							} else {
					%>	
									<span class="noti_tit"><%=rs.getString("title") %></span>
					<%
							}
					%>
					<% 
						} else {
							if(rs.getString("sec").equals("Y")) {
								if(uid.equals(rs.getString("author")) || uid.equals("keg")){
					%>
									<span class="noti_tit"><a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;" class="sec2"><%="↪ "+rs.getString("title") %></a></span>
					<%
								} else {
					%>
									<span class="noti_tit" style="padding-left:60px;"><%="↪ "+rs.getString("title") %></span>				
					<%
								}		
							} else if(rs.getString("sec").equals("N") && uid!="guest"){
					%>
								<span class="noti_tit"><a href='qnaDetail.jsp?no=<%=rs.getInt("no") %>' style="padding-left:60px;"><%="↪ "+rs.getString("title") %></a></span>						
					<%
							} else {
					%>
						 		<span class="noti_tit" style="padding-left:60px;"><%="↪ "+rs.getString("title") %></span>
					<%
							}
						} 
					%>
									
							
															
	                        <span class="noti_auth"><%=rs.getString("author") %></span>                   
	                        <span class="noti_date"><%=date %></span>	                        
	                    </li>
<%
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
%>	                    <li>
		                    <span class="btn_group">
							<% if(uid!="guest") { %>
							<a href="qnaWrite.jsp" class="btn primary">QNA 등록</a>
							<% } else { %>
							<p style="clear:both;width: 400px;font-size: 14px;" >회원가입 후 로그인 하셔야 질문 및 답변을 보실 수 있습니다.</p>
							<% } %>
							</span>
						</li>
                    </ul>					             	
                </div>
            </section>
        </div>        	
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>