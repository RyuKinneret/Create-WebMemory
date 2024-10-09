<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Autos</title>
    <!-- Vinculando el CSS desde la carpeta static -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/listar.css">
</head>
<body>
    <!-- Video de fondo -->
    <video autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/video/R35.mp4" type="video/mp4">
        Tu navegador no soporta el video.
    </video>
    
    <!-- Contenedor de la tabla -->
    <div class="content">
        <table>
            <caption>Listado de Autos</caption>
            <tr>
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Color</th>
                <th>Precio</th>
                <th>Fecha de Ingreso</th>
                <th>Año de Fabricación</th>
                <th>Kilometraje</th>
                <th>Estado</th>
                <th>Combustible</th>
                <th>Acciones</th>
            </tr>
            
            <c:forEach var="auto" items="${bAutos}">
                <tr>
                    <td>${auto.auto_id}</td>
                    <td>${auto.marca}</td>
                    <td>${auto.modelo}</td>
                    <td>${auto.color}</td>
                    <td><fmt:formatNumber value="${auto.precio}" type="currency" /></td>
                    <td>${auto.fecha_ingreso}</td>
                    <td>${auto.año_fabricacion}</td>
                    <td>${auto.kilometraje}</td>
                    <td>${auto.estado}</td>
                    <td>${auto.tipo_combustible}</td>
                    <td>
                        <a class="btn btn-detalle" href="/example/auto/detalle/${auto.auto_id}">Detalle</a>
                        <a class="btn btn-editar" href="/example/auto/editar/${auto.auto_id}">Editar</a>
                        <a class="btn btn-borrar" href="/example/auto/borrar/${auto.auto_id}">Borrar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        
        <div class="links">
            <a class="btn-link" href="/example/index">Inicio</a> | 
            <a class="btn-link" href="/example/auto/registrar">Registrar Nuevo Auto</a>
        </div>
    </div>
</body>
</html>

