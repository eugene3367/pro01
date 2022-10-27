<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	//캐릭터셋 설정
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	//보내온 데이터 받아오기
	int parno = Integer.parseInt(request.getParameter("no"));	
	int cnt = 0;	
	
	// DB생성 및 연결
	Connection con = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		
		sql = "delete from faqa where parno=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, parno);
		cnt = pstmt.executeUpdate();
		
		//반환된 결과에 따라 분기
		if(cnt>0){
			response.sendRedirect("faq.jsp");
		} else {
			response.sendRedirect("faqDetail.jsp?no="+parno);
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>