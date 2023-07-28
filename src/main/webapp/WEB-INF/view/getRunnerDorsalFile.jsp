<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 7/18/2023
  Time: 3:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"  />
</head>
<body>

<%--    <form:form action="searchRunnerURL" modelAttribute="runnerAttribute" method="get">--%>

<%--        <table border="1">--%>


<%--            <tr>--%>
<%--                <td>Dorsal</td>--%>
<%--                <input type="text" name="dorsalIngresado" class="form-control" id="dorsal" th:value="${dorsalIngresado}" placeholder="ingrese dorsal a buscar" required>--%>
<%--            </tr>--%>


<%--            <tr>--%>
<%--                <td colspan="2"><input type="submit" value="Buscar"></td>--%>

<%--            </tr>--%>

<%--        </table>--%>

<%--    </form:form>--%>

        <form action="showResultOfSearchRunnerByDorsalURL" method="get">

            <input type="text" name="runnerDorsalToSearch">
            <input type="submit">
        </form>





</body>
</html>
