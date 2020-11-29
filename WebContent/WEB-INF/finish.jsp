<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" href="/Quiz/css/finish.css">
<title>finish ページ</title>
</head>
<body>
<div class ="main">
  <div class = "quiz-main">
  		<h1 class = "result">結果</h1>
  		<p class = "result-num"><c:out value ="${point}"/>/<c:out value ="${maxquiznum}"/>問正解</p>
  		<div class = "retry-box">
    		<form action="/Quiz/RetryServlet" method="post">
				<button class = "finish-btn1" type="submit">もう一度挑戦する</button>
			</form>
			<form action="/Quiz/FinishServlet" method="post">
				<button class = "finish-btn2" type="submit">トップへ戻る</button>
			</form>
		</div>
  </div>
</div>
</body>
</html>