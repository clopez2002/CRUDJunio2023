<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 6/8/2023
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <table>

        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
            <th>Email</th>
            <th>Dorsal</th>
            <th>Tiempo</th>

        </tr>

        <c:forEach var="runnersTEMP" items="${runnerAttribute}">

            <tr>
                <td>${runnersTEMP.nombre}</td>
                <td>${runnersTEMP.apellido}</td>
                <td>${runnersTEMP.edad}</td>
                <td>${runnersTEMP.email}</td>
                <td>${runnersTEMP.dorsal}</td>
                <td>${runnersTEMP.tiempo}</td>

            </tr>


        </c:forEach>

    </table>
</body>
</html>
