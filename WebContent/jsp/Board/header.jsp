<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="team2.member.MemberDBBean"%>
<%@ page import="team2.member.MemberDataBean"%>

<%
	MemberDBBean dbpro = MemberDBBean.getInstance();

	String member_id = "";
   try{
	   member_id = (String)session.getAttribute("member_id");
%>
<link rel="stylesheet" type="text/css" href="../../css/header_style.css"></link>
<div id="header">
	<div id="nav">
		<ul>
			<% if(member_id == null){ %>
			<li><a href="../Login/LoginForm.jsp">로그인</a></li>
			<% } else { %>
			<li><a href="../Login/Logout.jsp">로그아웃</a></li>
			<% } %>
			<li><a href="../Main.jsp">BOBBOX</a></li>
			<li><a href="reviewBoardList.jsp">게시판</a></li>
			<li>마이페이지</li>
			<li>고객센터</li>
		</ul>
		<img height="80px" src="../../img/BOBBOX_LOGO_Text.png" />
	</div>
</div>
<% 
	   
    }catch(Exception e){
		e.printStackTrace();
	}
%>