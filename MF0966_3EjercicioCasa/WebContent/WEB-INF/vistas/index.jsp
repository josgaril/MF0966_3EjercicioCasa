<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/vistas/includes/cabecera.jsp"%>

<h2>Bienvenidos a Ipartek, su centro de estudios</h2>

<section id="cursos" class="row">

	<c:forEach items="${cursos}" var="curso">
		<div
			class="card col-12 col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-2 tarjetas">
			<a href="curso/detalle?codigo=${curso.codigo}"><img
				src="imgs/${curso.nombre}.jpg" class="card-img-top "
				alt="imagen del curso" style="height: 200px"></a>
			<div class="card-body">
				<div>
					<p class="card-text">Identificador: ${curso.identificador}</p>
					<p class="card-text">Duración: ${curso.nHoras} h.</p>
					<p class="card-text">Profesor: ${curso.profesor.nombre}
						${curso.profesor.apellidos}</p>
					<a href="curso/detalle?codigo=${curso.codigo}" class="btn btn-primary">Detalles del curso</a>
				</div>
			</div>
		</div>

		<%-- 		Antiguas tarjetas
			<div class="card col-12 col-sm-6 col-md-6 col-lg-4 col-xl-3 mb-2 tarjetas">
			<img src="imgs/${curso.nombre}.jpg" class="card-img-top "
				alt="imagen del curso" style="height: 200px">
			<div class="card-body">
				<a href="curso/detalle?codigo=${curso.codigo}">${curso.nombre}</a>
				<div>
					<p class="card-text">Identificador: ${curso.identificador}</p>
					<p class="card-text">Duración: ${curso.nHoras} h.</p>
					<p class="card-text">Profesor: ${curso.profesor.nombre}
						${curso.profesor.apellidos}</p>
				</div>
			</div>
		</div> --%>
	</c:forEach>
</section>

<%@ include file="/WEB-INF/vistas/includes/pie.jsp"%>
