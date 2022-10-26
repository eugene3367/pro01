<%@page import="jdk.nashorn.internal.ir.ForNode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	Connection con = null;
	PreparedStatement pstmt= null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from boarda";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		
		
	}catch(Exception e){
		e.printStackTrace();		
	}finally{
		rs.close();
		pstmt.close();
		con.close();
	}
	

%>

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