<%@ page language="java" contentType="text/html; charset=UTF-8"
     import=" java.util.*,sec02.ex01.*"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <%--JSTL 포맷팅 선언 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%>    
<html>
<head>
<meta charset="UTF-8">
<jsp:useBean  id="m" class="sec02.ex01.MemberBean" />
<jsp:setProperty name="m" property="*"  />				<%-- setter 주입 --%>
<%
   MemberDAO memDAO=new MemberDAO();
   memDAO.addMember(m);
   List membersList =memDAO.listMembers();
   request.setAttribute("membersList", membersList);
%> 
</head>
<body>
<jsp:forward  page="membersList.jsp" />					<%-- 포워드 --%>
</body>
</html>
