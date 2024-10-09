<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Spring Form -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Auto</title>
    <!-- Vinculando el CSS desde la carpeta static -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/registrar.css">
</head>
<body>
    <!-- Video de fondo -->
    <video autoplay muted loop id="bg-video">
        <source src="${pageContext.request.contextPath}/video/R35.mp4" type="video/mp4">
        Tu navegador no soporta el video.
    </video>

    <!-- Contenido del formulario -->
    <div class="container">
        <h3>Registrar Nuevo Auto</h3>
        <form:form method="post" action="" modelAttribute="auto">
            <div class="form-row">
                <div class="form-field">
                    <form:input type="text" path="marca" placeholder="Marca" />
                </div>
                <div class="form-field">
                    <form:input type="text" path="modelo" placeholder="Modelo" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <form:input type="text" path="color" placeholder="Color" />
                </div>
                <div class="form-field">
                    <form:input type="text" path="precio" placeholder="Precio" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <form:input type="date" path="fecha_ingreso" />
                </div>
                <div class="form-field">
                    <form:input type="text" path="año_fabricacion" placeholder="Año de Fabricación" />
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <form:input type="text" path="kilometraje" placeholder="Kilometraje" />
                </div>
                <div class="form-field">
                    <form:select path="estado">
                        <form:option value="Nuevo">Nuevo</form:option>
                        <form:option value="Usado">Usado</form:option>
                    </form:select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-field">
                    <form:select path="tipo_combustible">
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
