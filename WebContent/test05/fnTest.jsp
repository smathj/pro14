<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>       
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>	<%-- JSTL Function --%>

<%
  request.setCharacterEncoding("utf-8");
%>
 
<html>
<head>
<meta charset="UTF-8">
<title>여러 가지 문자열 함수 기능</title>
</head>
<body>
	<c:set var="title1" value="hello world!" />
	<c:set var="title2" value="쇼핑몰 중심 JSP입니다!" />
	<c:set  var="str1" value="중심" />
	<h2>여러 가지 문자열 함수 기능</h2>
	title1="hello world"<br>
	title2="쇼핑몰 중심 JSP 입니다.!"<br>
	str1="중심"<br><br>
	
	fn:length(title1)=${fn:length(title1) } <br>						<%-- 길이 구하기 --%>
	fn:toUpperCase(title1)=${fn:toUpperCase(title1)}<br>				<%-- 대문자로 바꿔줘 --%>
	fn:toLowerCase(title1)=${fn:toLowerCase(title1)}<br><br>			<%-- 소문자로 바꿔줘 --%>
	
	fn:substring(title1,3,6)=${fn:substring(title1,3,6)}<br>			<%-- 자주쓰지 --%>
	fn:trim(title1)=${fn:trim(title1)}<br>								<%-- 자주쓰지 --%>
	fn:replace(title1," ","/")=${fn:replace(title1," ","/")}<br><br>	<%-- " "을 "/"로 바꾼다 --%>
	
	fn:indexOf(title2,str1)=${fn:indexOf(title2,str1) }<br>				<%-- 몇번째에 인덱스에 있니? --%>
	fn:contains(title1,str1)=${fn:contains(title1,str1) }<br>			<%-- 포함하니? true / false --%>
	fn:contains(title2,str1)=${fn:contains(title2,str1) }<br>			<%-- 포함하니? true / false --%>
</body>
</html>
