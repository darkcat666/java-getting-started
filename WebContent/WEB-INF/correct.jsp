<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" >
	<link rel="stylesheet" href="/Quiz/css/correct.css">
<title>正解！</title>
</head>
<body>
<div class ="main">
  <div class = "quiz-main">
  	<div class = "quiz-correct">
		<h1 class = "correct"><i class="far fa-circle circle"></i>正解<i class="far fa-circle circle"></i></h1>
  	</div>
  	<p class = "answer">A. <c:out value ="${answer}"/></p>
  	<span class = "bold">【解説】</span><p class = "explanation"><c:out value ="${explanation}"/></p>
	<form action="/Quiz/Main" method = "post">
  		<div class = "next">
			<button class = "quiz-btn1" type="submit">次へ</button>
    	</div>
	</form>
  </div>
</div>
</body>	
</html>
