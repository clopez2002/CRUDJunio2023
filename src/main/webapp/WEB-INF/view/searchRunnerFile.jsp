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

    <form:form action="insertRunnerURL" modelAttribute="runnerAttribute" method="post">

        <table border="1">

            <tr>
                <td>Dorsal</td>
                <td><form:input path="dorsal"/></td>
            </tr>



        </table>


        <!-- Boton de modificar -->
        <td><a href="${searchLink}"><input type="button" value="Search"/></a> </td>

    </form:form>


</body>
</html>
