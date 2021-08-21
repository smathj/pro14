<%@ page language="java" contentType="text/html; charset=UTF-8"
     import="java.util.*"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<c:url var="url1"  value="/test01/member1.jsp"  >	<%--추가로 넘길 파라미터는 c:param으로 담는다 --%>
  <c:param  name="id" value="hong" />
  <c:param  name="pwd" value="1234" />
  <c:param  name="name" value="홍길동" />
  <c:param  name="email" value="hong@test.com" />
</c:url>
<html>
<head>
<meta charset=”UTF-8">
<title> c:url  태그 실습</title>
</head>
<body>
  <%-- <a href='${contextPath }/test01/member1.jsp'>회원정보출력</a> --%>
<a href='${url1}'>회원정보출력</a>
</body>
</html>
