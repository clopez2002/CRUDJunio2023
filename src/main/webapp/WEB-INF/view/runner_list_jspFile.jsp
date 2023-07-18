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

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"  />

</head>
<body>


    <table border="1">

        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
            <th>Email</th>
            <th>Dorsal</th>
            <th>Tiempo</th>

            <!-- Boton de Modificar-->

            <th>Modificar</th>

            <!-- Boton de ELIMINAR REGISTRO -->

            <th>Eliminar</th>


        </tr>

        <c:forEach var="runnersTEMP" items="${runnerAttribute}">

            <c:url var="updateLink" value="/runners/updateRunnerURL">

                <c:param name="runnerId" value="${runnersTEMP.id}"/>

            </c:url>


            <!-- Aca vamos a eliminar-->

            <c:url var="deleteLink" value="/runners/deleteRunnerURL">

                <c:param name="runnerId" value="${runnersTEMP.id}"/>

            </c:url>


            <tr>
                <td>${runnersTEMP.nombre}</td>
                <td>${runnersTEMP.apellido}</td>
                <td>${runnersTEMP.edad}</td>
                <td>${runnersTEMP.email}</td>
                <td>${runnersTEMP.dorsal}</td>
                <td>${runnersTEMP.tiempo}</td>

                <!-- Boton de modificar -->
                <td><a href="${updateLink}"><input type="button" value="Update"/></a> </td>

                <!-- Boton de ELIMINAR, aca href apunta al url var de la linea 53!!! -->
                <!-- Aca vamos a agregar una ventana por SEGURIDAD, preguntando si efectivamente desea eliminar user..-->
                <td><a href="${deleteLink}"><input type="button" value="Eliminar"
                                                   onclick="if (!(confirm('Esta seguro de eliminar el usuario?'))) return false"/></a> </td>


            </tr>


        </c:forEach>

    </table>

    <!-- boton que nos lleva al formuario de agregar runner -->
    <input type="button" value="Agregar runner" onclick="window.location.href='addRunnerURL';return false;">

    <!-- Agregamos boton para BUCAR un runner -->

    <input type="button" value="Buscar runner por dorsal" onclick="window.location.href='searchRunnerURL';return false;">


</body>
</html>
