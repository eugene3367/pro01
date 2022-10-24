<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>

<%

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; chareset=UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.driver");
		conn = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from memberA where id=? and pw=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		
		rs=pstmt.executeQuery();
		
		if(rs.next()){
			session.setAttribute("id", rs.getString("id"));
			session.setAttribute("pw", rs.getString("pw"));
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("tel", rs.getString("tel"));
			session.setAttribute("email", rs.getString("email"));
			session.setAttribute("regdate", rs.getString("regdate"));
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	} catch(Exception e){
		e.printStackTrace();
	}finally{
		rs.close();
		pstmt.close();
		conn.close();
	}
%>