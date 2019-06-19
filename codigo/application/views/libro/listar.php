<link href="<?=base_url()?>assets/css/listaPeliculas.css"/>
<?php if(isset($_SESSION['rol']) && $_SESSION['rol']=="premium"):?>
<!-- Comprobar el rol del usuario para verificar si puede crear un libro o no, en este caso
pueden acceder tanto usuarios premium como administradores -->

<!-- El botón es diferente para premium y administrador porque en el caso de un usuario premium
el libro se asociará a su usuario -->
<form action="<?=base_url()?>libro/crear" method="POST">
<input type="hidden" name="id" value="<?=$_SESSION['id']?>"/>
<input type="submit" class="btn btn-warning" value="Publicar un libro"/>
</form>
<?php endif;?>
<!-- Cargar la lista de libros -->
<h2>Lista de libros</h2>
<script type="text/javascript">
        $(document).ready(function() {
            $("#tabs").tabs();
        });
</script>
<div class="principalSerie_section-2">
	<h2><strong>Filtrar:</strong></h2>
	<!--GENERO-->
	<ul>
		<li><strong><h4>Filtrar por Genero:</h4> </strong>
			<select class="form-control" id="generoFiltrar" style="width:55%; margin-left:15%;" onchange="filtrar();">
				<option value="ninguna">Selecciona una opción</option>
				<option value="accion">Acción</option>
				<option value="animacion">Animación</option>
				<option value="aventuras">Aventuras</option>
				<option value="cienciaficcion">Ciencia ficción</option>
				<option value="misterio">Misterio</option>
				<option value="terror">Terror</option>
				<option value="accion">Acción</option>
				<option value="fantasia">Fantasía</option>
				<option value="superheroes">Superhéroes</option>
				<option value="romantica">Romántica</option>
				<option value="drama">Drama</option>
				<option value="comedia">Comedia</option>
				<option value="thriller">Thriller</option>
			</select>
		</li>
		<!--DURACION-->
		<li><strong><h4 class="valoraMvl">Número de páginas:</h4> </strong>
			<select class="form-control" id="duracionFiltrar" style="width:55%; margin-left:15%;" onchange="filtrarDuracion();">
				<option value="0">Selecciona una opción</option>
				<option value="5">Menos de 250</option>
				<option value="6">250-300</option>
				<option value="7">300-350</option>
				<option value="8">Más de 350</option>
			</select>
		</li>
	</ul>
	<!-- SECTION 2 -->
</div>
<!-- Tabs para navegar entre las distintas pestañas -->
<div class="tabla" id="tabs">
	<ul>
		<li><a href="#tabs-1">Todas</a></li>
		<li><a href="#tabs-2">Siguiendo</a></li>
		<li><a href="#tabs-3">Favoritos</a></li>
		<li><a href="#tabs-4">Pendientes</a></li>
		<li><a href="#tabs-5">Leídos</a></li>
		<li><a href="#tabs-6">Recomendaciones</a></li>
	</ul>
	<!-- Pestaña de todas las películas -->
	<div id="tabs-1">
		<div class="principalSerie">
			<div class="principalSerie_section-1">
				<div class="containerSeries">
					<?php if(isset($libros) && $libros!=null):?>
				<?php foreach($libros as $libro):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$libro->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>libro/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$libro->id?>"/>
								<input type="hidden" class="genero" value="<?=$libro->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$libro->numero_paginas?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$libro->nombre?></h4></button>
							</form>
						</div>
					</div>
					<?php endforeach;?>
	<?php endif;?>
				</div>
			</div>
	</div>
</div>
		<!-- Pestaña de películas seguidas -->
<div id="tabs-2">
	<div class="principalSerie">
		<div class="principalSerie_section-1">
			<div class="containerSeries">
			<?php if(isset($seguidas) && $seguidas!=null):?>
				<?php foreach($seguidas as $seguida):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$seguida->libro->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>libro/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$seguida->libro->id?>"/>
								<input type="hidden" class="genero" value="<?=$seguida->libro->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$seguida->libro->numero_paginas?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$seguida->libro->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No sigues ningún libro aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver los libros que sigues</h2>
	<?php endif;?>
				<?php endif;?>
			</div>
		</div>	
	</div>
		</div>
<!-- Pestaña de películas favoritas -->
		<div id="tabs-3">
			<div class="principalSerie">
			<div class="principalSerie_section-1">
				<div class="containerSeries">
				<?php if(isset($favoritas) && $favoritas!=null):?>
				<?php foreach($favoritas as $favorita):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$favorita->libro->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
					<div class="h4DvSerie">
						<form action="<?=base_url()?>libro/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$favorita->libro->id?>"/>
								<input type="hidden" class="genero" value="<?=$favorita->libro->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$favorita->libro->numero_paginas?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$favorita->libro->nombre?></h4></button>
							</form>
					</div>
				</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No tienes ningún libro favorito aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver tus libros favoritos</h2>
	<?php endif;?>
				<?php endif;?>
			</div>
		</div>
	</div>
</div>
<!-- Pestaña de películas pendientes -->
<div id="tabs-4">
	<div class="principalSerie">
		<div class="principalSerie_section-1">
			<div class="containerSeries">
			<?php if(isset($pendientes) && $pendientes!=null):?>
				<?php foreach($pendientes as $pendiente):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$pendiente->libro->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>libro/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pendiente->libro->id?>"/>
								<input type="hidden" class="genero" value="<?=$pendiente->libro->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$pendiente->libro->numero_paginas?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$pendiente->libro->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No tienes ningún libro pendiente aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver tus libros pendientes</h2>
	<?php endif;?>
				<?php endif;?>
			</div>
		</div>
	</div>
</div>
<!-- Lista de películas vistas -->
<div id="tabs-5">
	<div class="principalSerie">	
		<div class="principalSerie_section-1">
			<div class="containerSeries">
			<?php if(isset($vistas) && $vistas!=null):?>
				<?php foreach($vistas as $vista):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$vista->libro->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>libro/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$vista->libro->id?>"/>
								<input type="hidden" class="genero" value="<?=$vista->libro->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$vista->libro->numero_paginas?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$vista->libro->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No has terminado ningún libro aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver los libros que has terminado</h2>
	<?php endif;?>
				<?php endif;?>
		</div>
	</div>
	</div>
</div>
<!-- Recomendaciones -->
<div id="tabs-6">
		<div class="principalSerie">
			<div class="principalSerie_section-1">
				<div class="containerSeries">
					<?php if(isset($recomendaciones) && $recomendaciones!=null):?>
					<?php foreach($recomendaciones as $recomendacion):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$recomendacion->libro->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>libro/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$recomendacion->libro->id?>"/>
								<input type="hidden" class="genero" value="<?=$recomendacion->libro->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$recomendacion->libro->numero_paginas?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$recomendacion->libro->nombre?></h4></button>
							</form>
						</div>
					</div>
					<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>No tenemos recomendaciones para ti en este momento</h1>
	<?php else:?>
	<h2>Inicia sesión para recibir recomendaciones personalizadas</h2>
	<?php endif;?>
				<?php endif;?>
</div>
</div>
</div>
</div>
</div>
</div>