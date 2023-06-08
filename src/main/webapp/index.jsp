<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<!--

<a href="hello-servlet">Hello Servlet</a>

-->
<!-- esta linea que comentamos redireccion a ejecutar el Servlet. ahora cambiamos para que redireccione a /runners/list
<a href="Servlet">Ejecutar Servlet!</a>
-->

<% response.sendRedirect("runners/runnerslist"); %>
</body>
</html>