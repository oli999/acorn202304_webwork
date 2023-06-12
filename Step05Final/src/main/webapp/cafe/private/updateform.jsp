<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파라미터로 전달되는 수정할 파일의 글번호 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당글의 정보 얻어오기
	CafeDto dto=CafeDao.getInstance().getData(num);
	//3. 수정폼을 응답하기 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cafe/private/updateform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>글 수정양식</h1>
		<form action="update.jsp" method="post">
			<div class="mb-2">
				<label class="form-label" for="num">번호</label>
				<input class="form-control" type="text" id="num" name="num" value="<%=dto.getNum() %>" readonly/>
			</div>
			<div class="mb-2">
				<label class="form-label" for="title">제목</label>
				<input class="form-control" type="text" id="title" name="title" value="<%=dto.getTitle() %>"/>
			</div>
			<div class="mb-2">
				<label class="form-label" for="content">내용</label>
				<textarea class="form-control" name="content" id="content" rows="10"><%=dto.getContent() %></textarea>
			</div>
			<button class="btn btn-primary" type="submit">수정확인</button>
			<button class="btn btn-warning" type="reset">Reset</button>
		</form>
	</div>
</body>
</html>








