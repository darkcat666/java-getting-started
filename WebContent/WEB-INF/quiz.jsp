<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" href="/Quiz/css/quiz.css">
<title>投資信託クイズ</title>
</head>
<body>
<div class = "main">
  <div class = "quiz-main">
 	<div class = "q">
   		問<c:out value ="${count_quiz}"/>/<c:out value ="${maxquiznum}"/>
 	</div>
 	<div class = "explain">
   		<div class = "explain2"><c:out value ="${question}"/></div>
 	</div>
 	<div class = "choice-area">
	  <form action="/Quiz/JudgeServlet" method = "post" name="form1">
<%
ArrayList list = (ArrayList)request.getAttribute("listPlace");

int tmpNum;
for (int j = 0; j < 4; j++) {
	tmpNum = (int)list.get(j);
if (tmpNum == 1) {%>
		<div class = "choice_btn">
		  <button class = "quiz-btn" type="submit" name="choice" value="answer"><c:out value ="${answer}"/>
		  </button>
		</div>
<%	} else if(tmpNum == 2) {%>
		<div class = "choice_btn">
		  <button class = "quiz-btn" type="submit" name="choice" value="choose1"><c:out value ="${choose1}"/>
		  </button>
		</div>
<% 	} else if (tmpNum == 3) {%>
		<div class = "choice_btn">
		  <button class = "quiz-btn" type="submit" name="choice" value="choose2"><c:out value ="${choose2}"/>
		  </button>
		</div>
<%	} else if (tmpNum == 4) {%>
		<div class = "choice_btn">
		  <button class = "quiz-btn" type="submit" name="choice" value="choose3"><c:out value ="${choose3}"/>
		  </button>
		</div>
<%	}
}
%>
	    </form>
      </div>
  </div>
</div>
</body>
</html>
