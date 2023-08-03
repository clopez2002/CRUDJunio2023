<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 7/26/2023
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"  />
</head>
<body>
    Aca vamos a dar info si se encontro el runner por dorsal o no

    <p>
        atencion el dorsal buscado es: ${param.runnerDorsalToSearch}
    </p>

    <!--         c:forEach var="runnersTEMP" items="${runnerAttribute}">        -->
    <!--         c:param name="runnerId" value="${runnersTEMP.id}"/>            -->



<%--  --%>
<%--    <table border="1">--%>
<%--        <tr>--%>
<%--            <th>Nombre</th>--%>
<%--            <th>Apellido</th>--%>
<%--            <th>Edad</th>--%>
<%--            <th>Email</th>--%>
<%--            <th>Dorsal</th>--%>
<%--            <th>Tiempo</th>--%>


<%--        </tr>--%>

<%--        <c:param name="runnersTEMP" value="${runnerAttribute}"/>--%>
<%--        <tr>--%>

<%--            <td><c:out value="${runnersTEMP.nombre}"/></td>--%>
<%--            <td><c:out value="${runnersTEMP.apellido}"/></td>--%>
<%--            <td><c:out value="${runnersTEMP.edad}"/></td>--%>
<%--            <td><c:out value="${runnersTEMP.email}"/></td>--%>
<%--            <td><c:out value="${runnersTEMP.dorsal}"/></td>--%>
<%--            <td><c:out value="${runnersTEMP.tiempo}"/></td>--%>
<%--        </tr>--%>


<%--    </table>--%>

    <form:form action="showResultOfSearchRunnerByDorsalURL" modelAttribute="runnerAttribute" method="post">


        <table border="1">
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

        </table>

    </form:form>



    <!-- Boton de Volver al inicio -->

    <tr>
       <!--  <td colspan="2"><input type="submit" value="Regresar"></td> -->
        <input type="button" value="Volcer al inicio" onclick="window.location.href='runnerslist';return false;">

    </tr>



</body>
</html>
