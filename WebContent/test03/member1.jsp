<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%--JSTL Core를 쓰기위해 선언 ^^ --%>


<%
  request.setCharacterEncoding("UTF-8");
%>  

<%--Java 코드 없이 "변수" 선언 --%>
<c:set  var="id"  value="hong"  scope="page" />
<c:set  var="pwd"  value="1234"  scope="page" />
<c:set  var="name"  value="${'홍길동'}"  scope="page" />
<c:set  var="age"  value="${22}"  scope="page" />
<c:set  var="height"  value="${177}"  scope="page" />

<html>
<head>
  <meta charset=”UTF-8">
  <title>회원 정보 출력창</title>
</head>
<body>
<table  align="center"  border=1  >
   <tr align="center"  bgcolor="lightgreen" >
      <td width="7%" ><b>아이디</b></td>
      <td width="7%" ><b>비밀번호</b></td>
      <td width="7%" ><b>이름</b></td>
      <td width="7%"><b>나이</b></td>
      <td width="7%" ><b>키</b></td>
   </tr>
   <tr align="center">
      <td>${id}</td>	<%--표현 언어로 JSTL문법으로 선언한 변수의 값 출력 --%>
      <td>${pwd}</td>
      <td>${name}</td>
      <td>${age}</td>
      <td>${height}</td>
   </tr>
</table>
