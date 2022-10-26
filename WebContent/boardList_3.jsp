<%@page import="jdk.nashorn.internal.ir.ForNode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>

<%@ include file="connectionPool.conf"%>
<%
	
	int no = Integer.parseInt(request.getParameter("no"));
	sql = "select a.no no, a.title tit, a.content con, b.name nm, a.resdate res from boarda a inner join membera b on a.author=b.id where a.no=?;";
	pstmt = con.prepareStatement(sql);
	pstmt.setInt(1, no);
	rs= pstmt.executeQuery();
	if(rs.next()){

%>

	<p><%=rs.getInt("no") %></p>
	<p><%=rs.getString("tit") %></p>
	<p><%=rs.getString("con") %></p>
	<p><%=rs.getString("nm") %></p>
	<p><%=rs.getString("resdate") %></p>
}


<%@ include file="connectionClose.conf" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardList2</title>
<%@ include file="head.jsp" %>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="header.css">
<style>

</style>
<link rel="stylesheet" href="footer.css">
</head>
<body>
<header class="hd">
	<%@ include file="nav.jsp" %>
</header>
<div class="content">
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>