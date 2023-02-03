<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL Example</title>
</head>
<body>

<%--<%--%>
<%--    if (Objects.equals(request.getParameter("username"), "admin" ) && Objects.equals(request.getParameter("password"), "password")) {--%>
<%--        String redirectURL = "/profile.jsp";--%>
<%--        response.sendRedirect(redirectURL);--%>
<%--    }--%>
<%--    %>--%>

<c:if test="${pageContext.request.method.equalsIgnoreCase('post')}">
    <c:if test="${param.username == 'admin' && param.password == 'password'}">
        <c:redirect url="/WEB-INF/profile.jsp" />
    </c:if>
</c:if>

<form method="POST" action="login.jsp">

    <label for="username">Username</label>
    <input id="username" name="username" type="text">
    <br>

    <label for="password">Password</label>
    <input id="password" name="password" type="password">
    <br>

    <button type="submit"> Login </button>


</form>

</body>
</html>
