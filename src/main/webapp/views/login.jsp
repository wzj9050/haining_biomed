
<%@ page contentType="text/html; charset=gbk" import="cn.edu.zju.servlet.User"%>

<html>
    <head>
        <title>login</title>
   </head>
 <body>
  <!-- <p1>test!</p1> -->
   <h2 align="center">��ӭ��¼</h2>
      <form name=loginForm action="views/handlelogin.jsp" method=post>
        <table align="center">
         <tr>
                 <td>�û�����</td><td><input type=text name=username /></td>
            </tr>
             <tr>
                 <td>���룺</td><td><input type=password name=pwd /></td>
            <tr/>
           <tr>
            <td colspan="2",align="center">
                <input type="submit" value="submit" />
                <input type="reset" value="reset" />
            </td>
           </tr>
        </table>

       </form>

  </body>
</html>
