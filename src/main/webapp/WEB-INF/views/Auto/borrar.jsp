<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Borrar Auto</title>
    <!-- Vinculando el CSS desde la carpeta static -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/borrar.css">
</head>
<body>
    <!-- Video de fondo -->
    <video autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/video/R35.mp4" type="video/mp4">
        Tu navegador no soporta el video.
    </video>

    <div class="container">
        <h3>Borrar Auto</h3>
        
        <form:form method="post" action="" modelAttribute="auto">
            <div class="form-row">
                <div class="form-field">
                    <label for="auto_id">Auto ID:</label>
                    <form:input type="text" path="auto_id" id="auto_id" readonly="true"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <label for="marca">Marca:</label>
                    <form:input type="text" path="marca" id="marca" readonly="true"/>
                </div>
            </div>
            <p style="color: red; text-align: center;">¿Está seguro de borrar este auto?</p>
            
            <div class="buttons">
                <button type="submit">Sí, borrar</button>
                <button type="button" onclick="location.href='/example/auto/listar'">Cancelar</button>
            </div>
        </form:form>
    </div>
</body>
</html>
