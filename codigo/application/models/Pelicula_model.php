<?php

class Pelicula_model extends CI_Model
{
    //Crear una película
    public function crear($nombre, $descripcion, $genero, $duracion, $fecha, $imagen)
    {
        $ok = false;
        
        $bean = R::findOne('pelicula', 'nombre=?', [
            $nombre
        ]);
        $ok = ($bean == null);
        
        if ($ok) {
            $pelicula= R::dispense('pelicula');
            $pelicula->nombre = $nombre;
            $pelicula->descripcion = $descripcion;
            $pelicula->genero = $genero;
            $pelicula->duracion = $duracion;
            $pelicula->fecha = $fecha;
            //SUBIR UNA IMAGEN
            if($imagen["name"]!=null){
                $imageFileType=strtolower(pathinfo($imagen['name'],PATHINFO_EXTENSION));
                $imagen['name'] = $nombre.".".$imageFileType;
                $target_dir = "assets/img/caratulas/peliculas/";
                $target_file = $target_dir . $imagen["name"];
                $uploadOk = 1;
                $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                // Comprobar el tamaño del archivo
                if ($imagen["size"] > 500000) {
                    echo "El tamaño del archivo es demasiado grande.";
                    $uploadOk = 0;
                }
                // Permitir ciertos formatos de archivo
                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ) {
                    echo "Lo sentimos, solo se pueden subir imágenes en formato jpg., png, jpeg o gif";
                    $uploadOk = 0;
                }
                // Comprobar si está todo bien
                if ($uploadOk == 0) {
                    echo "Ups, ha ocurrido un error, no es ha podido subir tu archivo.";
                // Si todo está bien, se intenta subir la imagen
                } else {
                    if (move_uploaded_file($imagen["tmp_name"], $target_file)) {
                        $pelicula->ruta_caratula=$target_file;
                    }
                }
            }
            R::store($pelicula);
        }
        return $ok;
    }
    //Cargar una película por id
    public function getPeliculaById($id)
    {
        return R::findOne('pelicula', 'id=?', [
            $id
        ]);
    }
    //Cargar una película por nombre
    public function getPeliculaByNombre($nombre)
    {
        return R::findOne('pelicula', 'nombre=?', [
            $nombre
        ]);
    }
    //Listar películas
    public function listar()
    {
        return R::findAll('pelicula');
    }
    //Actualizar una película
    public function update($id, $nombre_nuevo, $descripcion_nuevo, $genero_nuevo, $duracion_nuevo, $fecha_nuevo, $imagen)
    {
        $ok = false;
        
        $bean = R::findOne('pelicula', 'id=?', [
            $id
        ]);
        $ok = ($bean != null);
        
        if ($ok) {
            $pelicula = R::load('pelicula', $id);
            $pelicula->nombre = $nombre_nuevo;
            $pelicula->descripcion= $descripcion_nuevo;
            $pelicula->genero = $genero_nuevo;
            $pelicula->duracion = $duracion_nuevo;
            $pelicula->fecha = $fecha_nuevo;
            //SUBIR UNA IMAGEN
            if($imagen["name"]!=null){
                $imageFileType=strtolower(pathinfo($imagen['name'],PATHINFO_EXTENSION));
                $imagen['name'] = $nombre.".".$imageFileType;
                $target_dir = "assets/img/caratulas/peliculas/";
                $target_file = $target_dir . $imagen["name"];
                $uploadOk = 1;
                $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                // Comprobar el tamaño del archivo
                if ($imagen["size"] > 500000) {
                    echo "El tamaño del archivo es demasiado grande.";
                    $uploadOk = 0;
                }
                // Permitir ciertos formatos de archivo
                if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" ) {
                    echo "Lo sentimos, solo se pueden subir imágenes en formato jpg., png, jpeg o gif";
                    $uploadOk = 0;
                }
                // Comprobar si está todo bien
                if ($uploadOk == 0) {
                    echo "Ups, ha ocurrido un error, no es ha podido subir tu archivo.";
                // Si todo está bien, se intenta subir la imagen
                } else {
                    if (move_uploaded_file($imagen["tmp_name"], $target_file)) {
                        $pelicula->ruta_caratula=$target_file;
                    }
                }
            }
            R::store($pelicula);
            
        }
        return $ok;
    }
    //Eliminar una película
    public function delete($id)
    {
        $pelicula = R::load('pelicula', $id);
        foreach($pelicula->ownPeliculafavoritoList as $favorito){
        $f=R::load('peliculafavorito', $favorito->id);
        R::trash($f);
        }
        foreach($pelicula->ownPeliculaestadoList as $estado){
            $e=R::load('peliculaestado', $estado->id);
            R::trash($e);
            }
        foreach($pelicula->ownPeliculacomentarioList as $comentario){
            $c=R::load('peliculacomentario', $comentario->id);
            R::trash($c);
        }
        foreach($pelicula->ownPeliculavaloracionList as $valoracion){
            $v=R::load('peliculavaloracion', $valoracion->id);
            R::trash($v);
        }
        R::trash($pelicula);
    }
    //Añadir un comentario a una película
    public function crearComentario($idUsu, $idPeli, $comentario){
        $usuario=R::load('usuario', $idUsu);
        $pelicula=R::load('pelicula', $idPeli);
        $coment=R::dispense('peliculacomentario');
        $coment->usuario=$usuario;
        $coment->pelicula=$pelicula;
        $coment->comentario=$comentario;
        $ok= R::store($coment);
        return $ok;
    }
    //Listar los comentarios de una película
    public function listarComentariosByPelicula($id){
        return R::findAll('peliculacomentario', 'pelicula_id=?', [$id]);
    }
    //Cambiar el estado de una película
    public function cambiarEstado($estado, $usuario, $pelicula){
        $ok = false;
        $bean = R::findOne('peliculaestado', 'pelicula_id=? and usuario_id=?', [
            $pelicula,
            $usuario
        ]);
        $ok = ($bean == null);
        if($ok){
            $est=R::dispense('peliculaestado');
            $est->usuario=R::load('usuario', $usuario);
            $est->pelicula=R::load('pelicula', $pelicula);
            $est->estado=$estado;
            R::store($est);
        }
        else{
            $est = R::findOne('peliculaestado', 'pelicula_id=? and usuario_id=?', [
                $pelicula,
                $usuario
            ]);
            $est->estado=$estado;
            R::store($est);
        }
    }
    //Añadir una película a favoritos
    public function Favorito($usuario, $pelicula){
        $ok = false;
        $bean = R::findOne('peliculafavorito', 'pelicula_id=? and usuario_id=?', [
            $pelicula,
            $usuario
        ]);
        $ok = ($bean == null);
        if($ok){
            $est=R::dispense('peliculafavorito');
            $est->usuario=R::load('usuario', $usuario);
            $est->pelicula=R::load('pelicula', $pelicula);
            R::store($est);
        }
        else{
            $est = R::findOne('peliculafavorito', 'pelicula_id=? and usuario_id=?', [
                $pelicula,
                $usuario
            ]);
            R::trash($est);
        }
    }
    //Añadir una valoración de un usuario a una película
    public function cambiarValoracion($valor, $usuario, $pelicula){
        $ok = false;
        $bean = R::findOne('peliculavaloracion', 'pelicula_id=? and usuario_id=?', [
            $pelicula,
            $usuario
        ]);
        $ok = ($bean == null);
        if($ok){
            $est=R::dispense('peliculavaloracion');
            $est->usuario=R::load('usuario', $usuario);
            $est->pelicula=R::load('pelicula', $pelicula);
            $est->valor=$valor;
            R::store($est);
        }
        else{
            $est = R::findOne('peliculavaloracion', 'pelicula_id=? and usuario_id=?', [
                $pelicula,
                $usuario
            ]);
            $est->valor=$valor;
            R::store($est);
        }
    }
    //Cargar las películas a partir de un estado
    public function getPeliculasEstado($estado, $id){
        return R::findAll('peliculaestado', 'estado=? and usuario_id=?', [$estado, $id]);
    }
    //Cargas las películas favoritas de un usuario
    public function getPeliculasFavoritas($id){
        return R::findAll('peliculafavorito', 'usuario_id=?', [$id]);
    }
    //Cargas el estado de favorito de una película de un usuario
    public function cargaFavorito($usuario, $pelicula){
        $ok=false;
        $bean= R::findAll('peliculafavorito', 'usuario_id=? and pelicula_id=?', [$usuario, $pelicula]);
        $ok=$bean!=null;
        if($ok){
            return "Encontrado";
        }
        else{
            return "No encontrado";
        }
    }
    //Cargar el estado de una película de un usuario
    public function cargaEstado($usuario, $pelicula){
        $ok=false;
        $bean= R::findOne('peliculaestado', 'usuario_id=? and pelicula_id=?', [$usuario, $pelicula]);
        $ok=$bean!=null;
        if($ok){
            return $bean->estado;
        }
        else{
            return "nada";
        }
    }
    //Cargar la valoración de una película de un usuario
    public function cargaValoracion($usuario, $pelicula){
        $ok=false;
        $bean= R::findOne('peliculavaloracion', 'usuario_id=? and pelicula_id=?', [$usuario, $pelicula]);
        $ok=$bean!=null;
        if($ok){
            return $bean->valor;
        }
        else{
            return "nada";
        }
    }
    //CARGAR LAS PELÍCULAS MÁS VALORADAS
    public function getPeliculasMasValoradas(){
        $ok=false;
        $bean= R::findAll('pelicula');
        $ok=$bean!=null;
        $pelis=[];
        $media=null;
        if($ok){
            foreach($bean as $b){
                $this->load->model('pelicula_model');
                $media=$this->pelicula_model->getValoracionMedia($b->id);
                if($media>=4){
                    array_push($pelis, $b);
                }
            }
            return $pelis;
        }
        else{
            return null;
        }
    }
    //CARGAR LAS 10 PRIMERAS PELÍCULAS ORDENADAS POR FECHA(DESDE LA MÁS RECIENTE)
    public function getPeliculasRecientes(){
        $ok=false;
        $bean= R::findAll('pelicula', 'order by fecha desc limit 10');
        $ok=$bean!=null;
        $media=null;
        if($ok){
            return $bean;
        }
        else{
            return null;
        }
    }
    //CARGAR LA VALORACIÓN MEDIA DE UNA PELÍCULA
    public function getValoracionMedia($id){
        $ok=false;
        $bean= R::findAll('peliculavaloracion', 'pelicula_id=?', [$id]);
        $ok=$bean!=null;
        $media=0;
        if($ok){
            foreach ($bean as $b){
                $media+=$b->valor;
            }
            $media=$media/sizeof($bean);
            return $media;
        }
        else{
            return null;
        }
    }
    public function deleteComentario($id){
        $bean=R::load('peliculacomentario', $id);
        R::trash($bean);
    }
    //BUSCAR UNA PELÍCULA A PARTIR DE UNA PARTE DE SU NOMBRE
    public function buscaPeliculas($cadena){
        return R::findAll('pelicula', 'nombre LIKE ?', [$cadena."%"]);
    }
    //Cargar las películas recomendadas para un usuario
    public function getPeliculasRecomendadas($id){
        $beans= R::getAssoc("Select * from peliculavaloracion where usuario_id=? and valor>4", [$id]);
        $claves=array_keys($beans);
        $i=0;
        $datos=array();
        foreach($beans as $bean){
            $dato=["id"=> $claves[$i], "valor"=>$bean["valor"], "usuario_id"=>$bean["usuario_id"], "pelicula_id"=>$bean["pelicula_id"]];
            $datos[$i]=$dato;
            $i++;
        }
        $ok=$beans!=null;
        $peliculasMasValoradas=array();
        $pelisValoradas=array();
        $peliculasCasiRecomendadas=array();
        $peliculasRecomendadas=[];
        $generos=array();
        $generosUsados=array();
        if($ok){
            foreach($datos as $peli){
                $pelicula=R::findOne('pelicula', "id=?", [$peli['pelicula_id']]);
                if(!in_array($pelicula->genero, $generosUsados)){
                    array_push($generosUsados, $pelicula->genero);
                }
            }
            foreach($generosUsados as $gen){
                $peliculasMasValoradas=array_merge($peliculasMasValoradas, R::findAll('pelicula', 'genero=?', [$gen]));
            }
            $valor=0;
            if($peliculasMasValoradas!=null){
                foreach($peliculasMasValoradas as $peli){
                    $peliculasCasiRecomendadas=array_merge($peliculasCasiRecomendadas, R::findAll('peliculavaloracion', 'pelicula_id=?', [$peli->id]));
                    
                }
                foreach($peliculasCasiRecomendadas as $peli){
                    $valor=$this->getValoracionMedia($peli->id);
                    if($valor>=4){
                        array_push($peliculasRecomendadas, $peli);
                    }
                }
                }
//                print_r($peliculasRecomendadas);
            return $peliculasRecomendadas;
        }
        else{
            return null;
        }
    }
   /* public function getColorDominante($ruta){
$extension=explode(".", $ruta);
$img=ImageCreateFromJpeg($ruta);
$w = imagesx($img);
    $h = imagesy($img);
    $r = $g = $b = 0;
    for($y = 0; $y < $h; $y++) {
        for($x = 0; $x < $w; $x++) {
            $rgb = imagecolorat($img, $x, $y);
            $r += $rgb >> 16;
            $g += $rgb >> 8 & 255;
            $b += $rgb & 255;
        }
    }
    $pxls = $w * $h;
    $r = dechex(round($r / $pxls));
    $g = dechex(round($g / $pxls));
    $b = dechex(round($b / $pxls));
    if(strlen($r) < 2) {
        $r = 0 . $r;
    }
    if(strlen($g) < 2) {
        $g = 0 . $g;
    }
    if(strlen($b) < 2) {
        $b = 0 . $b;
    }
    return "#" . $r . $g . $b;
}*/

//Esto no vale para nada

/*public function getPeliculasRecomendadas($id){
    //$bean=R::find('peliculavaloracion', 'usuario_id=? AND valor>4 ORDER BY valor DESC ', [$id]);
     $beans= R::getAssoc("Select * from peliculavaloracion where usuario_id=? and valor>4 ORDER BY valor desc", [$id]);
     $claves=array_keys($beans);
     $i=0;
     $datos=array();
     foreach($beans as $bean){
         $dato=["id"=> $claves[$i], "valor"=>$bean["valor"], "usuario_id"=>$bean["usuario_id"], "pelicula_id"=>$bean["pelicula_id"]];
         $datos[$i]=$dato;
         $i++;
     }
     //print_r($datos);
     //$bean = R::convertToBean( 'peliculavaloracion', $datos );
     //print_r($bean);
     $ok=$datos!=null;
     $peliculasMasValoradas=array();
     $peliculasRecomendadas=array();
     if($ok){
         foreach($datos as $peli){
             $pelicula=R::findOne("pelicula", "id=?", [$peli["pelicula_id"]]);
             //$peliculasMasValoradas=array_merge($peliculasMasValoradas, R::findAll('pelicula', 'genero=?', [$pelicula->genero]));
             $peliculasMasValoradas=array_merge($peliculasMasValoradas, R::getAssoc("SELECT distinct * from pelicula where genero LIKE ?", ["%$pelicula->genero%"]));
             
         }
         //print_r($peliculasMasValoradas);
         $datosM=array();
         $clavesM=array_keys($peliculasMasValoradas);
         $p=0;
         foreach($peliculasMasValoradas as $bean){
             $dato=["id"=> $clavesM[$p], "nombre"=>$bean["nombre"], "descripcion"=>$bean["descripcion"], "genero"=>$bean["genero"], "duracion"=>$bean["duracion"], "fecha"=>$bean["fecha"], "ruta_caratula"=>$bean['ruta_caratula']];
             $datosM[$p]=$dato;
             $p++;
         }
         if($datosM!=null){
             foreach($datosM as $peli){
                 $peliculasRecomendadas=array_merge($peliculasMasValoradas, R::getAssoc("SELECT distinct * from peliculavaloracion where pelicula_id=? and valor>4", ["%$pelicula->genero%"]));
                 //$peliculasRecomendadas=array_merge($peliculasRecomendadas, R::findAll('peliculavaloracion', 'pelicula_id=? AND valor>4', [$peli['id']]));
             }
             print_r($peliculasRecomendadas);
         }
         return $peliculasRecomendadas;
     }
     else{
         return null;
     }
}*/
}