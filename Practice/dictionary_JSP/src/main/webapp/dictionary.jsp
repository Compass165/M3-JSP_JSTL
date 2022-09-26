<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/26/2022
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary - JSP</title>
</head>
<body>

<%!
    Map<String, String> dic = new HashMap<>();
%>

<%

    dic.put("hello", "xin chao`");
    dic.put("how", "the' nao`?");
    dic.put("what", "cai' gi`");
    dic.put("why", "lam` sao?");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("Result: " +result);
    } else {
        out.println("Not found");
    }

%>

</body>
</html>
