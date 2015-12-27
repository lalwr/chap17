<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>
<%@ page import="khj.chap17.board.service.DeleteArticleService" %>
<jsp:useBean id="deleteRequest" class="khj.chap17.board.model.DeleteRequest" />
<jsp:setProperty name="deleteRequest" property="*" />
<%
	String viewPage = null;
	try {
		DeleteArticleService.getInstance().deleteArticle(deleteRequest);
		viewPage = "/delete_sucess.jsp";
	} catch(Exception ex) {
		request.setAttribute("deleteException", ex);
		viewPage = "/delete_error.jsp";
	}
%>
<jsp:forward page="<%= viewPage %>"></jsp:forward>