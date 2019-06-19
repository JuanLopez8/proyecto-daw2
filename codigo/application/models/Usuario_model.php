<?php

class Usuario_model extends CI_Model
{
    //CREAR UN USUARIO
    public function crear($correo, $nombreUsuario, $clave, $nombre, $apellidos, $descripcion, $fnac, $rol)
    {
        $ok = false;
        $bean = R::findOne('usuario', 'nombre_usuario=?', [
            $nombreUsuario
        ]);
        $ok = ($bean == null);
        if ($ok) {
            $usuario = R::dispense('usuario');
            $usuario->correo = $correo;
            $usuario->nombreUsuario = $nombreUsuario;
            $usuario->clave = $clave;
            $usuario->nombre = $nombre;
            $usuario->apellidos = $apellidos;
            $usuario->descripcion = $descripcion;
            $usuario->fecha_nacimiento = $fnac;
            $usuario->rol = "basico";
            R::store($usuario);
        }
        return $ok;
    }
    //CAMBIAR LA CONTRASEÑA DE UN USUARIO
    public function updatePassword($id, $claveNueva)
    {
        $ok = false;
        $bean = R::findOne('usuario', 'id=?', [
            $id
        ]);
        $ok = ($bean != null);

        if ($ok) {
            $usuario = R::load('usuario', $id);
            $usuario->clave = $claveNueva;
            R::store($usuario);
        }
        return $ok;
    }
    //CARGAR UN USUARIO A PARTIR DE SU ID
    public function getUsuarioById($id)
    {
        return R::findOne('usuario', 'id=?', [
            $id
        ]);
    }
    //CARGAR UN USUARIO A PARTIR DE SU NOMBRE
    public function getUsuarioByNombre($nombreUsuario)
    {
        return R::findOne('usuario', 'nombre_usuario=?', [
            $nombreUsuario
        ]);
    }
    //Cambiar el rol de un usuario a administrador
    public function hacerUsuarioAdmin($id){
        $usuario=R::load('usuario', $id);
        if($usuario!=null){
            $usuario->rol="administrador";
            R::store($usuario);
        }
        return "ok";
    }
    //CAMBIAR LA IMAGEN DE PERFIL DE UN USUARIO
    public function cambiarImagen($id, $imagen){
        $imageFileType=strtolower(pathinfo($imagen['name'],PATHINFO_EXTENSION));
        $imagen['name']=$id.".".$imageFileType;
        $target_dir = "assets/img/usuarios/";
        $target_file = $target_dir . basename($imagen["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        // Comprueba el tamaño del archivo
        if ($imagen["size"] > 500000) {
            return "Sorry, your file is too large.";
            $uploadOk = 0;
        }
        // Permite ciertos tipos de formato
        if($imageFileType != "jpg"/* && $imageFileType != "png" && $imageFileType != "jpeg"
        && $imageFileType != "gif"*/ ) {
            return "Lo sentimos, solo se pueden subir imágenes en formato jpg.";
            $uploadOk = 0;
        }
        // Comprueba si $uploadOk esta puesto a 0 por error
        if ($uploadOk == 0) {
            return "Tu fichero NO ha sido subido.";
        // Si todo esta ok intenta subir el archivo
        } else {
            if (move_uploaded_file($imagen["tmp_name"], $target_file)) {
                return "ok";
            } else {
                return "Ha habido un error al subir su archivo.";
            }
        }
    }
    //ACTUALIZAR UN USUARIO
    public function update($id, $correo_nuevo, $nombreUsuario_nuevo, $nombre_nuevo, $apellidos_nuevo, $descripcion_nuevo, $fnac_nuevo)
    {
        $ok = false;

        $bean = R::findOne('usuario', 'id=?', [
            $id
        ]);
        $ok = ($bean != null);

        if ($ok) {
            $usuario = R::load('usuario', $id);
            $usuario->correo = $correo_nuevo;
            $usuario->nombreUsuario = $nombreUsuario_nuevo;
            $usuario->nombre = $nombre_nuevo;
            $usuario->apellidos = $apellidos_nuevo;
            $usuario->descripcion = $descripcion_nuevo;
            $usuario->fecha_nacimiento = $fnac_nuevo;
            R::store($usuario);
        }
        return $ok;
    }
    //ELIMINAR UN USUARIO
    public function delete($id)
    {
        $usuario = R::load('usuario', $id);
        //Pelicula
        foreach($usuario->ownPeliculafavoritoList as $favorito){
        $f=R::load('peliculafavorito', $favorito->id);
        R::trash($f);
        }
        foreach($usuario->ownPeliculaestadoList as $estado){
            $f=R::load('peliculaestado', $estado->id);
            R::trash($f);
         }
        foreach($usuario->ownPeliculacomentarioList as $comentario){
         $f=R::load('peliculacomentario', $comentario->id);
         R::trash($f);
         }
        foreach($usuario->ownPeliculavaloracionList as $valoracion){
         $f=R::load('peliculavaloracion', $valoracion->id);
         R::trash($f);
        }
        //Serie
            foreach($usuario->ownSeriefavoritoList as $favorito){
            $f=R::load('seriefavorito', $favorito->id);
            R::trash($f);
            }
            foreach($usuario->ownSerieestadoList as $estado){
                $f=R::load('serieestado', $estado->id);
                R::trash($f);
             }
            foreach($usuario->ownSeriecomentarioList as $comentario){
             $f=R::load('seriecomentario', $comentario->id);
             R::trash($f);
             }
            foreach($usuario->ownSerievaloracionList as $valoracion){
             $f=R::load('serievaloracion', $valoracion->id);
             R::trash($f);
            }
        //Libro
            foreach($usuario->ownLibrofavoritoList as $favorito){
            $f=R::load('librofavorito', $favorito->id);
            R::trash($f);
            }
            foreach($usuario->ownLibroestadoList as $estado){
                $f=R::load('libroestado', $estado->id);
                R::trash($f);
             }
            foreach($usuario->ownLibrocomentarioList as $comentario){
             $f=R::load('librocomentario', $comentario->id);
             R::trash($f);
             }
            foreach($usuario->ownLibrovaloracionList as $valoracion){
             $f=R::load('librovaloracion', $valoracion->id);
             R::trash($f);
            }
        //Musica
            foreach($usuario->ownMusicafavoritoList as $favorito){
            $f=R::load('musicafavorito', $favorito->id);
            R::trash($f);
            }
            foreach($usuario->ownMusicaestadoList as $estado){
                $f=R::load('musicaestado', $estado->id);
                R::trash($f);
             }
            foreach($usuario->ownMusicacomentarioList as $comentario){
             $f=R::load('musicacomentario', $comentario->id);
             R::trash($f);
             }
            foreach($usuario->ownMusicavaloracionList as $valoracion){
             $f=R::load('musicavaloracion', $valoracion->id);
             R::trash($f);
            }
            $libros=R::findAll('libro', 'usuario_id=?', [$usuario->id]);
            foreach($libros as $libro){
                $l=R::load('libro', $libro->id);
                R::trash($l);
            }
            $musicas=R::findAll('musica', 'usuario_id=?', [$usuario->id]);
            foreach($musicas as $musica){
                $m=R::load('musica', $musica->id);
                R::trash($m);
            }
        R::trash($usuario);
    }
    //MEJORAR LA CUNETA DE UN USUARIO Y PASARSE A PREMIUM
    public function mejorarCuenta($id){
        $usuario=R::load('usuario', $id);
        $usuario->rol="premium";
        R::store($usuario);
    }
    //CARGAR UNA LISTA DE TODOS LOS USUARIOS
    public function listar() {
        return R::findAll('usuario');
    }
    //CARGAR LOS PORCENTAJES DE LOS DISTINTOS ESTADOS DE LAS PELÍCULAS, SERIES Y DEMÁS QUE SIGUE EL USUARIO
    public function getPorcentajes($id){
        $seguidas=0;
        $vistas=0;
        $pendientes=0;
        $dejadas=0;
        $total=[];
        
        $porcentajePelisSeguidas=R::count('peliculaestado', 'estado=? and usuario_id=?', ["seguir", $id]);
        $porcentajePelisVistas=R::count('peliculaestado', 'estado=? and usuario_id=?', ["terminada", $id]);
        $porcentajePelisPendientes=R::count('peliculaestado', 'estado=? and usuario_id=?', ["pendiente", $id]);
        $porcentajePelisDejadas=R::count('peliculaestado', 'estado=? and usuario_id=?', ["abandonada", $id]);
        
        $porcentajeSeriesSeguidas=R::count('serieestado', 'estado=? and usuario_id=?', ["seguir", $id]);
        $porcentajeSeriesVistas=R::count('serieestado', 'estado=? and usuario_id=?', ["terminada", $id]);
        $porcentajeSeriesPendientes=R::count('serieestado', 'estado=? and usuario_id=?', ["pendiente", $id]);
        $porcentajeSeriesDejadas=R::count('serieestado', 'estado=? and usuario_id=?', ["abandonada", $id]);
        
        $porcentajeLibrosSeguidos=R::count('libroestado', 'estado=? and usuario_id=?', ["seguir", $id]);
        $porcentajeLibrosVistos=R::count('libroestado', 'estado=? and usuario_id=?', ["terminada", $id]);
        $porcentajeLibrosPendientes=R::count('libroestado', 'estado=? and usuario_id=?', ["pendiente", $id]);
        $porcentajeLibrosDejados=R::count('libroestado', 'estado=? and usuario_id=?', ["abandonada", $id]);
        
        $porcentajeMusicasSeguidas=R::count('musicaestado', 'estado=? and usuario_id=?', ["seguir", $id]);
        $porcentajeMusicasVistas=R::count('musicaestado', 'estado=? and usuario_id=?', ["terminada", $id]);
        $porcentajeMusicasPendientes=R::count('musicaestado', 'estado=? and usuario_id=?', ["pendiente", $id]);
        $porcentajeMusicasDejadas=R::count('musicaestado', 'estado=? and usuario_id=?', ["abandonada", $id]);
        
        $seguidas=$porcentajePelisSeguidas+$porcentajeLibrosSeguidos+$porcentajeMusicasSeguidas+$porcentajeSeriesSeguidas;
        $vistas=$porcentajePelisVistas+$porcentajeLibrosVistos+$porcentajeMusicasVistas+$porcentajeSeriesVistas;
        $pendientes=$porcentajePelisPendientes+$porcentajeLibrosPendientes+$porcentajeMusicasPendientes+$porcentajeSeriesPendientes;
        $dejadas=$porcentajePelisDejadas+$porcentajeLibrosDejados+$porcentajeMusicasDejadas+$porcentajeSeriesDejadas;

        echo $seguidas.",".$vistas.",".$pendientes.",".$dejadas;
    }
}