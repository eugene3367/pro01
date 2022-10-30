<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String sid = (String) session.getAttribute("id");
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
		    width: 100px;
		    line-height: 32px;
		    border-radius: 20px;
		    cursor: pointer;
		    color: black;
		    margin-top: 20px;
		    margin-left: -30px;
		    font-weight: 900;
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
                    <span class="sel">온라인 상담 하기</span>
                </div>
            </div>
            <section class="page">
                <div class="page_wrap">
                    <h2 class="page_title">온라인 상담 하기</h2>
                    <p style="clear:both">작성하여 보내신 내용은 관리자 이메일로 보내지며, 내용을 확인 후 별도 개별적으로 3일 이내 연락드립니다.</p>
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
                    <form name="frm" action="onlinePro.jsp" method="post" class="frm">
	                    <ul class="noti_lst">
	                    	<li>
		                        <span class="noti_num">작성자명</span>
		                        <span class="noti_tit"><input type="text" name="name" id="name" class="in_data" value='<%=rs.getString("name") %>' required></span>	                      
		                    </li>
	                        <li>
		                        <span class="noti_num">이메일 주소</span>
		                        <span class="noti_tit"><input type="email" name="from" id="from" class="in_data" value='<%=rs.getString("email") %>' required></span>	                      
		                    </li>   
		                    <li>
		                        <span class="noti_num">연락처</span>
		                        <span class="noti_tit"><input type="tel" name="tel" id="tel" class="in_data" value='<%=rs.getString("tel") %>' required></span>	                      
		                    </li> 
		                    <li>
		                        <span class="noti_num">상담제목</span>
		                        <span class="noti_tit"><input type="text" name="title" id="title" placeholder="제목 입력" maxlength="100" class="in_data" required></span>	                      
		                    </li> 
		                    <li>
		                        <span class="noti_num">상담 내용</span>
		                        <span class="noti_tit"><textarea cols="40" rows="20" name="content" maxlength="600" id="content" class="in_data2"></textarea></span>	                      
		                    </li>		                    
		                    <li class="btn_group">
			                    <span><button type="submit" class="btn primary">상담받기</button></span>
								<span><button class="btn primary"><a href="qna.jsp">질문 및 답변으로</a></button></span>
							</li>                    	                                
	                    </ul>
					</form>
					<%
					}
					%>
					<%@ include file="connectionClose.conf" %>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@ include file="footer.jsp" %>
        </footer>
    </div>
</body>
</html>