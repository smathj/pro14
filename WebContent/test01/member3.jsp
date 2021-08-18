<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%
  request.setCharacterEncoding("UTF-8");
%>    
<jsp:useBean  id="m" class="sec01.ex01.MemberBean" />
<jsp:setProperty  name="m" property="*" />
<%-- 
[7,8 라인 설명] 
	memberForm.jsp에서 action을 현재 JSP인 member3.jsp로 설정했을경우
	input 태그의 name에 맞춰서 자동으로 setter 주입받겠다 라는 내용이다.
 --%>

<meta  charset=”UTF-8">
<html>
<head>
<title>회원 정보 출력창</title>
</head>
<body>
   <table align=center border="1" >
     <tr align="center" bgcolor="#99ccff">
        <td width=20%><b>아이디</b></td>
        <td width="20%" ><b>비밀번호</b></td>
        <td width="20%" ><b>이름</b></td>
        <td width="20%" ><b>이메일</b></td>		
     </tr>
     </tr>
     <tr align="center">
       <td><%=m.getId() %> </td>	<%-- EL 문법으로 Bean을 사용하였다(표현식만가능) --%>
       <td><%=m.getPwd() %></td>
       <td><%=m.getName() %></td>
       <td><%=m.getEmail() %></td>
</tr>
     <tr align="center">
       <td>${m.id } </td>			<%-- ${} 표현 언어로 Bean을 사용하였따 --%>
       <td>${m.pwd} </td>
       <td>${m.name }</td>
       <td>${m.email }</td>
</tr>
</table>
</body>
</html>
