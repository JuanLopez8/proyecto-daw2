<link href="<?=base_url()?>assets/css/listaPeliculas.css"/>
<!-- Comprobar el rol del usuario para que pueda publicar su propia música -->
<?php if(isset($_SESSION['rol']) && ($_SESSION['rol']=="premium")):?>
<form action="<?=base_url()?>musica/crear" method="POST">
<input type="hidden" name="id" value="<?=$_SESSION['id']?>"/>
<input type="submit" class="btn btn-warning" value="Publicar música"/>
</form>
<?php endif;?>

<h2>Lista de música</h2>
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
							<option value="blues">Blues</option>
							<option value="country">Country</option>
							<option value="cumbia">Cumbia</option>
							<option value="electronica">Electrónica</option>
							<option value="flamenco">Flamenco</option>
							<option value="hiphop">Hip-Hop</option>
							<option value="jazz">Jazz</option>
							<option value="pop">Pop</option>
							<option value="rap">Rap</option>
							<option value="rock">Rock</option>
							<option value="metal">Metal</option>
	 	 				</select>
					</li>
					<li hidden><strong><h4 class="valoraMvl">Duración:</h4> </strong>
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
<!-- Tabs para navegar entre las pestañas -->
<div class="tabla" id="tabs">
	<ul>
		<li><a href="#tabs-1">Todas</a></li>
		<li><a href="#tabs-2">Siguiendo</a></li>
		<li><a href="#tabs-3">Favoritos</a></li>
		<li><a href="#tabs-4">Pendientes</a></li>
		<li><a href="#tabs-5">Escuchados</a></li>
		<li><a href="#tabs-6">Recomendaciones</a></li>
	</ul>
	<!-- Pestaña de todas las películas -->
	<div id="tabs-1">
		<div class="principalSerie">
			<div class="principalSerie_section-1">
				<div class="containerSeries">
				<?php if(isset($musicas) && $musicas!=null):?>
					<?php foreach($musicas as $musica):?>
					<div class="dvSerie" >
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$musica->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>musica/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$musica->id?>"/>
								<input type="hidden" class="genero" value="<?=$musica->genero?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$musica->nombre?></h4></button>
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
					<div class="dvSerie" >
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$seguida->musica->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>musica/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$seguida->musica->id?>"/>
								<input type="hidden" class="genero" value="<?=$seguida->musica->genero?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$seguida->musica->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
				<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No sigues ninguna música aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver la música que sigues</h2>
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
					<div class="dvSerie" >
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$favorita->musica->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
					<div class="h4DvSerie">
						<form action="<?=base_url()?>musica/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$favorita->musica->id?>"/>
								<input type="hidden" class="genero" value="<?=$favorita->musica->genero?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$favorita->musica->nombre?></h4></button>
							</form>
					</div>
				</div>
				<?php endforeach;?>
	<?php else:?>
	<h1>¡Vaya! No has agregado nada a favoritos aún.</h1>
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
					<div class="dvSerie" >
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$pendiente->musica->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>musica/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$pendiente->musica->id?>"/>
								<input type="hidden" class="genero" value="<?=$pendiente->musica->genero?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$pendiente->musica->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No tienes música pendiente aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver la música que tienes pendiente</h2>
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
					<div class="dvSerie" >
						<div class="imgDvSerie">
							<img src="<?=base_url()?><?=$vista->musica->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>musica/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$vista->musica->id?>"/>
								<input type="hidden" class="genero" value="<?=$vista->musica->genero?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4><?=$vista->musica->nombre?></h4></button>
							</form>
						</div>
					</div>
				<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>¡Vaya! No has terminado nada de música aún.</h1>
	<?php else:?>
	<h2>Inicia sesión para ver la música que has terminado</h2>
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
							<img src="<?=base_url()?><?=$recomendacion->musica->ruta_caratula?>" onerror="this.src='<?=base_url()?>assets/img/404.png';" alt="Imagen no encontrada" width="100%", height="100%"/>
						</div>
						<div class="h4DvSerie">
							<form action="<?=base_url()?>musica/detalles" method="POST">
								<input type="hidden" name="id" value="<?=$recomendacion->musica->id?>"/>
								<input type="hidden" class="genero" value="<?=$recomendacion->musica->genero?>"/>
								<button type="submit" value="Detalles" class="btnTitulo"><h4 class="tituloPelimvl"><?=$recomendacion->musica->nombre?></h4></button>
							</form>
						</div>
					</div>
					<?php endforeach;?>
	<?php else:?>
	<?php if(isset($_SESSION['id']) && $_SESSION['id']!=null):?>
				<h1>No tenemos recomendaciones para ti en este momento.</h1>
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