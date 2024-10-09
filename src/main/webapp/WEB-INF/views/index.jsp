<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Concesionario de Autos</title>
    <!-- Vinculando el CSS desde la carpeta static -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
</head>
<body>
    <!-- Video de fondo -->
    <video autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/video/R35.mp4" type="video/mp4">
        Tu navegador no soporta el video.
    </video>

    <!-- Contenido centrado -->
    <div class="content">
        <h3>¡Bienvenido al Concesionario de Autos!</h3>
        <a href="${pageContext.request.contextPath}/auto/listar">Ver Autos</a>
    </div>
</body>
</html>
