<%--
  Created by IntelliJ IDEA.
  User: ClaudioCristianLopez
  Date: 7/26/2023
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
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

    <table border="1">
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
            <th>Email</th>
            <th>Dorsal</th>
            <th>Tiempo</th>


    </table>

    <!-- Boton de Volver al inicio -->

    <tr>
       <!--  <td colspan="2"><input type="submit" value="Regresar"></td> -->
        <input type="button" value="Volcer al inicio" onclick="window.location.href='runnerslist';return false;">

    </tr>



</body>
</html>
