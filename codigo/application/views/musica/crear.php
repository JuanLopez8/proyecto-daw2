<body>
<?php if(!isset($_SESSION['rol']) || ($_SESSION['rol']!="premium" && $_SESSION['rol']!="administrador")):?>
<h1>No tienes permiso para entrar aquí</h1>
<?php endif;?>
<?php if(isset($_SESSION['rol']) && $_SESSION['rol']=="premium" || $_SESSION['rol']=="administrador"):?>
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="<?=base_url()?>musica/crearPost" method="POST" enctype="multipart/form-data" name="miForm">
					<div class="modal-header">						
						<h4 class="modal-title">Crear música:</h4>
					</div>
					<div class="modal-body">					
						<div class="form-group">
						<label><span>*</span>Nombre:</label>
							<input type="text" class="form-control" name="nombre" required id="nombre">
							<div id="errorNombre"></div>
							<label>Grupo/Autor:</label>
							<input type="<?php if(isset($usuario) && $usuario!=null):?>hidden<?php else:?>text<?php endif;?>" class="form-control form-control-sm" name="autor" id="autor" <?php if(isset($usuario) && $usuario!=null):?>value="<?=$usuario->nombreUsuario?>" <?php endif;?> />
							<div id="errorAutor"></div>
							<?php if(isset($usuario) && $usuario!=null):?>
							<input type="hidden" name="idUsu" value="<?=$usuario->id?>"/>
							<?php endif;?>
							<label>Álbum:</label>
							<input type="text" class="form-control form-control-sm" id="album" name="album" >
							<div id="errorAlbum"></div>
							<label>Género:</label>
							<select name="genero" id="genero" class="form-control form-control-sm" required>
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

							<label><span>*</span>Año:</label>
							<input type="text" class="form-control form-control-sm" name="fecha" id="fechaAn" >
							<div id="errorFecha"></div>
							<label><span>*</span>Imagen:</label>
                    		<input type="file" class="form-control form-control-sm" name="imagenMusica" id="imagenMusica">
							
							<br>
							<span style="margin-left: 15px;">*</span> Campos obligatiorios
							<br><br>
							<input type="button" class="btn btn-info" value="Crear" onclick="validarForm('musica')">
						</div>
					</div>
						
				</form>
			</div>
<?php endif;?>
</div>