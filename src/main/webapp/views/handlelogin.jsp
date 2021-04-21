<%@page contentType="text/html; charset=gbk" import="cn.edu.zju.servlet.User" %>
<%
   String username = request.getParameter("username");
   String pwd = request.getParameter("pwd");
    if(username.equals("admin")&&pwd.equals("123")){
           User u = new User(username,pwd);
       session.setAttribute("username",username);
        pageContext.forward("index.jsp");

   }else{
       pageContext.forward("login.jsp");
    }
%>

