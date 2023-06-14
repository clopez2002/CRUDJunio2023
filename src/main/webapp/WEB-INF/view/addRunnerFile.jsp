<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 6/14/2023
  Time: 12:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"  />
</head>
<body>

    <form:form action="insertRunnerURL" modelAttribute="runnerAttribute" method="post">

        <table>
                <tr>
                    <td>Nombre</td>
                    <td><form:input path="nombre"/></td>
                </tr>

                <tr>
                    <td>Apellido</td>
                    <td><form:input path="apellido"/></td>
                </tr>

                <tr>
                    <td>Edad</td>
                    <td><form:input path="edad"/></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><form:input path="email"/></td>
                </tr>

                <tr>
                    <td>Dorsal</td>
                    <td><form:input path="dorsal"/></td>
                </tr>

                <tr>
                    <td>Tiempo</td>
                    <td><form:input path="tiempo"/></td>
                </tr>

                </tr>

                <tr>
                    <td colspan="2"><input type="submit" value="Insert"></td>

                </tr>

        </table>

    </form:form>


</body>
</html>
