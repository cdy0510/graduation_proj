<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "team2.review_board.Review_BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="review_board" scope="page" class="team2.review_board.Review_BoardDataBean">
   <jsp:setProperty name="review_board" property="*"/>
</jsp:useBean>
<%
	int review_board_num = Integer.parseInt(request.getParameter("review_board_num"));
  	String pageNum = request.getParameter("pageNum");
  	int review_board_passwd = Integer.parseInt(request.getParameter("review_board_passwd"));

 	 Review_BoardDBBean dbPro = Review_BoardDBBean.getInstance(); 
 	 int check = dbPro.deleteReview_Board(review_board);

  if(check==1){
%>
	<meta http-equiv="Refresh" content="0;url=reviewBoardList.jsp?pageNum=<%=pageNum%>">
<%}else{%>
    <script type="text/javascript">      
       <!--      
         alert("비밀번호가 맞지 않습니다");
         history.go(-1);
       -->
   </script>
<%} %>