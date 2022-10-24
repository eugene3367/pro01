<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id= (String) session.getAttribute("id");
	String email= (String) session.getAttribute("email");
	String name= (String) session.getAttribute("name");
	String msg = (String) application.getAttribute("msg");
%>
<div class="hd_wrap">
    <a href="index.jsp" class="logo">
    	<img src="img/logo.svg" alt="POSCOlogo">
    </a>
    <nav class="tnb">
    <%
    	if(id!=null && id.equals("keg")){
    %>
    	<div>
    		<a href="memList.jsp">회원관리</a>
	        <a href="boardList.jsp">게시판관리</a>
	        <a href="logout.jsp">로그아웃</a>
	        <a href="sitemap.jsp">사이트맵</a></nav>
        </div>
    <%
   	}else if(id!=null){
    %>
   	<div>
   		<span class="name_print"><%=name %>님</span>
   		<a href="logout.jsp">로그아웃</a>
   		<a href="memInfo.jsp">회원정보</a>
   		<a href="sitemap.jsp">사이트맵</a>
   	</div>
    <%
   	}else{
    %>
   	<div>
   		<a href="login.jsp">로그인</a>
   		<a href="term.jsp">회원가입</a>
   		<a href="sitemap.jsp">사이트맵</a>
   	</div>
    <%
   	}
    %>
    <nav class="gnb">
        <ul>
            <li class="item1">
                <a href="company.jsp#page1" class="dp1">회사소개</a>
                <ul class="sub">
                    <li><a href="company.jsp#page1">비전</a></li>
                    <li><a href="company.jsp#page2">대표이사 메세지</a></li>
                    <li><a href="company.jsp#page3">포스코 CI</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="product.jsp#page1" class="dp1">제품</a>
                <ul class="sub">
                    <li><a href="product.jsp#page1">자동차</a></li>
                    <li><a href="product.jsp#page2">건설</a></li>
                    <li><a href="product.jsp#page3">에너지</a></li>
                </ul>
            </li>
            <li class="item3">
                <a href="esg.jsp#page1" class="dp1">ESG</a>
                <ul class="sub">
                    <li><a href="esg.jsp#page1">Environment</a></li>
                    <li><a href="esg.jsp#page2">Social</a></li>
                    <li><a href="esg.jsp#page3">Government</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="ad.jsp#page1" class="dp1">홍보채널</a>
                <ul class="sub">
                    <li><a href="ad.jsp#page1">미디어라이브러리</a></li>
                    <li><a href="ad.jsp#page2">문화행사</a></li>
                    <li><a href="ad.jsp#page3">견학신청</a></li>
                </ul>
            </li>
            <li class="item5">
                <a href="custom.jsp#page1" class="dp1">고객지원</a>
                <ul class="sub">
                    <li><a href="custom.jsp#page1">공지사항</a></li>
                    <li><a href="custom.jsp#page2">FAQ</a></li>
                    <li><a href="custom.jsp#page3">오시는길</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>