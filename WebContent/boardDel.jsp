<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, java.text.*" %>
<%
	//캐릭터셋 설정
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	//보내온 데이터 받아오기
	int no = Integer.parseInt(request.getParameter("no"));
	
	// DB생성 및 연결
	Connection con = null;
	PreparedStatement pstmt = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	int cnt = 0;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "delete from boarda where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		cnt = pstmt.executeUpdate();
		
		//반환된 결과에 따라 분기
		if(cnt>0){
			response.sendRedirect("boardList.jsp");
		} else {
			response.sendRedirect("boardDetail.jsp?no="+no);
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>