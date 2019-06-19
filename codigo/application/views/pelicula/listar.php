<link href="<?=base_url()?>assets/css/listaPeliculas.css"/>
<h2>Lista de películas</h2>
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
					<li><strong><h4 class="valoraMvl">Duración:</h4> </strong>
						<select class="form-control" id="duracionFiltrar" style="width:55%; margin-left:15%;" onchange="filtrarDuracion();">
							<option value="0">Selecciona una opción</option>
							<option value="1">90-120m</option>
							<option value="2">120-150m</option>
							<option value="3">150-180m</option>
							<option value="4">Más 180m</option>
						</select>
					</li>
				</ul>
				<!-- SECTION 2 -->
			</div>
<div class="tabla" id="tabs">
	<ul>
		<li><a href="#tabs-1">Todas</a></li>
		<li><a href="#tabs-2">Siguiendo</a></li>
		<li><a href="#tabs-3">Favoritas</a></li>
		<li><a href="#tabs-4">Pendientes</a></li>
		<li><a href="#tabs-5">Vistas</a></li>
		<li><a href="#tabs-6">Recomendaciones</a></li>
	</ul>
	<!-- Pestaña de todas las películas -->
	<div id="tabs-1">
		<div class="principalSerie">
			<div class="principalSerie_section-1">
				<div class="containerSeries">
					<?php if(isset($peliculas) && $peliculas!=null):?>
					<?php foreach($peliculas as $pelicula):?>
					<div class="dvSerie">
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$pelicula->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>pelicula/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pelicula->id?>"/>
								<input type="hidden" class="genero" value="<?=$pelicula->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$pelicula->duracion?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$pelicula->nombre?></h4></button>
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
							<img src="<?=base_url()?><?=$seguida->pelicula->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							
							<form action="<?=base_url()?>pelicula/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pelicula->id?>"/>
								<input type="hidden" class="genero" value="<?=$seguida->pelicula->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$seguida->pelicula->duracion?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$seguida->pelicula->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
				<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No sigues ninguna peli aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver las pelis que sigues</h2>
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
							<img src="<?=base_url()?><?=$favorita->pelicula->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
					<div class="h4DvSerie">
					
						<form action="<?=base_url()?>pelicula/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pelicula->id?>"/>
								<input type="hidden" class="genero" value="<?=$favorita->pelicula->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$favorita->pelicula->duracion?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$favorita->pelicula->nombre?></h4></button>
							</form>
					</div>
				</div>
				<?php endforeach;?>
	<?php else:?>
				<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No has agregado nada a favoritos aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver tus pelis favoritas</h2>
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
							<img src="<?=base_url()?><?=$pendiente->pelicula->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							
							<form action="<?=base_url()?>pelicula/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pelicula->id?>"/>
								<input type="hidden" class="genero" value="<?=$pendiente->pelicula->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$pendiente->pelicula->duracion?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$pendiente->pelicula->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No tienes pelis pendientes aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver las pelis que tienes pendientes</h2>
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
							<img src="<?=base_url()?><?=$vista->pelicula->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							
							<form action="<?=base_url()?>pelicula/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pelicula->id?>"/>
								<input type="hidden" class="genero" value="<?=$vista->pelicula->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$vista->pelicula->duracion?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$vista->pelicula->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
				<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No has terminado ninguna peli aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver las pelis que has completado</h2>
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
							<img src="<?=base_url()?><?=$recomendacion->pelicula->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>pelicula/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$recomendacion->pelicula->id?>"/>
								<input type="hidden" class="genero" value="<?=$recomendacion->pelicula->genero?>"/>
								<input type="hidden" class="duracion" value="<?=$recomendacion->pelicula->duracion?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$recomendacion->pelicula->nombre?></h4></button>
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