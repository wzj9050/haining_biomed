<%--
  Created by IntelliJ IDEA.
  User: ZijinDesktop2
  Date: 2021/4/15
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; charset=gbk" import="cn.edu.zju.servlet.helloServlet" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title>Hello world!?</title>
</head>
<body>
<jsp:forward page="helloServlet"></jsp:forward>
<script language="javascript">location.replace(URL)</script>
<%
    String answer = (String) request.getAttribute("words_test");
    out.println("山本，我日你先人，给句痛快话："+answer);%>
</body>
</html>
