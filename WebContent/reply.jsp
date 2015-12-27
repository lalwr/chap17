<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="khj.chap17.board.service.ReplyArticleService" %>
<%@ page import="khj.chap17.board.model.Article" %>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="replyingRequest" class="khj.chap17.board.model.ReplyingRequest" />
<jsp:setProperty name="replyingRequest" property ="*" />
<%
	String viewPage = null;
	try {
		Article postedArticle = ReplyArticleService.getInstance().reply(replyingRequest);
		request.setAttribute("posteArticle", postedArticle);
		viewPage = "/reply_sucess.jsp";
	} catch (Exception ex) {
		viewPage = "/reply_error.jsp";
		request.setAttribute("replyException", ex);
	}
%>
<jsp:forward page="<%= viewPage %>" />