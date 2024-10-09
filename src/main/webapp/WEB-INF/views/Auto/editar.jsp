<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Auto</title>
    <!-- Vinculando el CSS desde la carpeta static -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/editar.css">
</head>
<body>
    <!-- Video de fondo -->
    <video autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/video/R35.mp4" type="video/mp4">
        Tu navegador no soporta el video.
    </video>

    <div class="container">
        <h3>Editar Auto</h3>
        
        <form:form method="post" action="" modelAttribute="auto">
            <div class="form-row">
                <div class="form-field">
                    <label for="marca">Marca:</label>
                    <form:input type="text" path="marca" id="marca"/>
                </div>
                <div class="form-field">
                    <label for="modelo">Modelo:</label>
                    <form:input type="text" path="modelo" id="modelo"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <label for="color">Color:</label>
                    <form:input type="text" path="color" id="color"/>
                </div>
                <div class="form-field">
                    <label for="precio">Precio:</label>
                    <form:input type="text" path="precio" id="precio"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <label for="fecha_ingreso">Fecha de Ingreso:</label>
                    <form:input type="date" path="fecha_ingreso" id="fecha_ingreso"/>
                </div>
                <div class="form-field">
                    <label for="año_fabricacion">Año de Fabricación:</label>
                    <form:input type="text" path="año_fabricacion" id="año_fabricacion"/>
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <label for="kilometraje">Kilometraje:</label>
                    <form:input type="text" path="kilometraje" id="kilometraje"/>
                </div>
                <div class="form-field">
                    <label for="estado">Estado:</label>
                    <form:select path="estado" id="estado">
                        <form:option value="Nuevo">Nuevo</form:option>
                        <form:option value="Usado">Usado</form:option>
                    </form:select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <label for="tipo_combustible">Tipo de Combustible:</label>
                    <form:select path="tipo_combustible" id="tipo_combustible">
                        <form:option value="Gasolina">Gasolina</form:option>
                        <form:option value="Eléctrico">Eléctrico</form:option>
                    </form:select>
                </div>
            </div>
            <div class="buttons">
                <button type="submit">Guardar</button>
                <button type="button" onclick="location.href='/example/auto/listar'">Cancelar</button>
            </div>
        </form:form>
    </div>
</body>
</html>
