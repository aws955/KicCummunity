<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 주소를 입력하고 index.jsp에 접근하게 되면 바로 클라이언트 페이지의 공지사항 리스트로 이동하는 코드 -->

<% response.sendRedirect("clientNoticeList"); %>
</body>
</html>