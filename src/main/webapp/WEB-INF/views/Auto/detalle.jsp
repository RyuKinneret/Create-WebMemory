<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle del Auto</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/detalle.css">
</head>
<body>
    <!-- Video de fondo -->
    <video autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/video/R35.mp4" type="video/mp4">
        Tu navegador no soporta el video.
    </video>

    <!-- Contenedor para Detalle del Auto -->
    <div class="container">
        <h3>Detalle del Auto</h3>
        <div class="form-row">
            <div class="form-field">
                <b>Auto ID:</b> ${auto.auto_id}
            </div>
            <div class="form-field">
                <b>Marca:</b> ${auto.marca}
            </div>
        </div>
        <div class="form-row">
            <div class="form-field">
                <b>Modelo:</b> ${auto.modelo}
            </div>
            <div class="form-field">
                <b>Color:</b> ${auto.color}
            </div>
        </div>
        <div class="form-row">
            <div class="form-field">
                <b>Precio:</b> <fmt:formatNumber value="${auto.precio}" type="currency" minFractionDigits="2" maxFractionDigits="2"/>
            </div>
            <div class="form-field">
                <b>Fecha de Ingreso:</b> ${auto.fecha_ingreso}
            </div>
        </div>
        <div class="form-row">
            <div class="form-field">
                <b>Año de Fabricación:</b> ${auto.año_fabricacion}
            </div>
            <div class="form-field">
                <b>Kilometraje:</b> ${auto.kilometraje} km
            </div>
        </div>
        <div class="form-row">
            <div class="form-field">
                <b>Estado:</b> ${auto.estado}
            </div>
            <div class="form-field">
                <b>Tipo de Combustible:</b> ${auto.tipo_combustible}
                 <a href="${pageContext.request.contextPath}/auto/listar">Ver Autos</a>
            </div>
        </div>
    </div>
</body>
</html>
