<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	int no = Integer.parseInt(request.getParameter("no"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	int cnt = 0;
	
%>
<!-- DB 생성 및 연결 -->
<%@ include file="connectionPool2.conf" %>
<%
		
		sql = "update faqa set title=?, content=? where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setInt(3, no);
		cnt = pstmt.executeUpdate();
		
		if(cnt>0){
			response.sendRedirect("faq.jsp");
		} else {
			response.sendRedirect("faqModify.jsp?no="+no);
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		pstmt.close();
		con.close();
	}
%>