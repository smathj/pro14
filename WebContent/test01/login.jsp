<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"
isELIgnored="false"  %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>로그인창</title>
</head>
<body>
   <form action="result.jsp">
	   아이디 : <input type="text" size=20 /><br>
	   비밀번호: <input  type="password"  size=20 /><br>
	   <input  type="submit" value="로그인" /> <input type="reset" value="다시입력"  />
   </form> 
   <br><br>
  
  <%--첫번째 방법, 하드코딩 이기때문에 비효율적이다 --%>
  <!--  <a href="http://localhost:8090/pro14/test01/memberForm.jsp">회원가입하기</a> -->
  
  <%--두번째 방법, el로 자바코드를 사용했기떄문에 아직도 별로다 --%>
  <%--   <a href="<%=request.getContextPath() %>/test01/memberForm.jsp">회원가입하기</a>  --%>
    
  <%-- 세번째 방법 Tomcat이 생성해주는 내장객체이다 굿 --%>
  <a href="${pageContext.request.contextPath}/test01/memberForm.jsp">회원가입하기</a>
   
</body>
</html>
