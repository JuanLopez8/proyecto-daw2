<?php

class Serie_model extends CI_Model
{
    //CREAR UNA SERIE
    public function crear($nombre, $descripcion, $genero, $duracion, $fecha, $temporadas, $capitulos, $imagen)
    {
        $ok = false;
        
        $bean = R::findOne('serie', 'nombre=?', [
            $nombre
        ]);
        $ok = ($bean == null);
        
        if ($ok) {
            $serie= R::dispense('serie');
            $serie->nombre= $nombre;
            $serie->descripcion= $descripcion;
            $serie->genero = $genero;
            $serie->duracion = $duracion;
            $serie->fecha= $fecha;
            $serie->temporadas=$temporadas;
            $serie->capitulos=$capitulos;
            //SUBIR UNA IMAGEN
            if($imagen["name"]!=null){
                $imageFileType=strtolower(pathinfo($imagen['name'],PATHINFO_EXTENSION));
                $imagen['name'] = $nombre.".".$imageFileType;
                $target_dir = "assets/img/caratulas/series/";
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
                        $serie->ruta_caratula=$target_file;
                    }
                }
            }
            R::store($serie);
        }
        return $ok;
    }    
    //CARGAR UNA SERIE POR SU ID
    public function getSerieById($id)
    {
        return R::findOne('serie', 'id=?', [
            $id
        ]);
    }
    //CARGAR UNA SERIE POR SU NOMBRE
    public function getSerieByNombre($nombre)
    {
        return R::findOne('serie', 'nombre=?', [
            $nombre
        ]);
    }
    //LISTAR TODAS LAS SERIES
    public function listar()
    {
        return R::findAll('serie');
    }
    //ACTUALIZAR UNA SERIE
    public function update($id, $nombre_nuevo, $descripcion_nuevo, $genero_nuevo, $duracion_nuevo, $fecha_nuevo, $temporadas_nuevo, $capitulos_nuevo, $imagen)
    {
        $ok = false;
        
        $bean = R::findOne('serie', 'id=?', [
            $id
        ]);
        $ok = ($bean != null);
        
        if ($ok) {
            $serie = R::load('serie', $id);
            $serie->nombre = $nombre_nuevo;
            $serie->descripcion= $descripcion_nuevo;
            $serie->genero = $genero_nuevo;
            $serie->duracion = $duracion_nuevo;
            $serie->fecha = $fecha_nuevo;
            $serie->temporadas = $temporadas_nuevo;
            $serie->capitulos = $capitulos_nuevo;
            //SUBIR UNA IMAGEN
            if($imagen["name"]!=null){
                $imageFileType=strtolower(pathinfo($imagen['name'],PATHINFO_EXTENSION));
                $imagen['name'] = $nombre.".".$imageFileType;
                $target_dir = "assets/img/caratulas/series/";
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
                        $serie->ruta_caratula=$target_file;
                    }
                }
            }
            R::store($serie);
            
        }
        return $ok;
    }
    //ELIMINAR UNA IMAGEN
    public function delete($id)
    {
        $serie = R::load('serie', $id);
        foreach($serie->ownSeriefavoritoList as $favorito){
        $f=R::load('seriefavorito', $favorito->id);
        R::trash($f);
        }
        foreach($serie->ownSerieestadoList as $estado){
            $e=R::load('serieestado', $estado->id);
            R::trash($e);
            }
        foreach($serie->ownSeriecomentarioList as $comentario){
            $c=R::load('seriecomentario', $comentario->id);
            R::trash($c);
        }
        foreach($serie->ownSerievaloracionList as $valoracion){
            $v=R::load('serievaloracion', $valoracion->id);
            R::trash($v);
        }
        R::trash($serie);
    }
//Añadir un comentario a una serie
public function crearComentario($idUsu, $idSerie, $comentario){
    $usuario=R::load('usuario', $idUsu);
    $serie=R::load('serie', $idSerie);
    $coment=R::dispense('seriecomentario');
    $coment->usuario=$usuario;
    $coment->serie=$serie;
    $coment->comentario=$comentario;
    $ok= R::store($coment);
    return $ok;
}
//Listar los comentarios de una serie
public function listarComentariosBySerie($id){
    return R::findAll('seriecomentario', 'serie_id=?', [$id]);
}
//Cambiar el estado de una serie
public function cambiarEstado($estado, $usuario, $serie){
    $ok = false;
    $bean = R::findOne('serieestado', 'serie_id=? and usuario_id=?', [
        $serie,
        $usuario
    ]);
    $ok = ($bean == null);
    if($ok){
        $est=R::dispense('serieestado');
        $est->usuario=R::load('usuario', $usuario);
        $est->serie=R::load('serie', $serie);
        $est->estado=$estado;
        R::store($est);
    }
    else{
        $est = R::findOne('serieestado', 'serie_id=? and usuario_id=?', [
            $serie,
            $usuario
        ]);
        $est->estado=$estado;
        R::store($est);
    }
}
//Añadir una serie a favoritos
public function Favorito($usuario, $serie){
    $ok = false;
    $bean = R::findOne('seriefavorito', 'serie_id=? and usuario_id=?', [
        $serie,
        $usuario
    ]);
    $ok = ($bean == null);
    if($ok){
        $est=R::dispense('seriefavorito');
        $est->usuario=R::load('usuario', $usuario);
        $est->serie=R::load('serie', $serie);
        R::store($est);
    }
    else{
        $est = R::findOne('seriefavorito', 'serie_id=? and usuario_id=?', [
            $serie,
            $usuario
        ]);
        R::trash($est);
    }
}
//Añadir una valoración de un usuario a una serie
public function cambiarValoracion($valor, $usuario, $serie){
    $ok = false;
    $bean = R::findOne('serievaloracion', 'serie_id=? and usuario_id=?', [
        $serie,
        $usuario
    ]);
    $ok = ($bean == null);
    if($ok){
        $est=R::dispense('serievaloracion');
        $est->usuario=R::load('usuario', $usuario);
        $est->serie=R::load('serie', $serie);
        $est->valor=$valor;
        R::store($est);
    }
    else{
        $est = R::findOne('serievaloracion', 'serie_id=? and usuario_id=?', [
            $serie,
            $usuario
        ]);
        $est->valor=$valor;
        R::store($est);
    }
}
//Cargar las series a partir de un estado
public function getSeriesEstado($estado, $id){
    return R::findAll('serieestado', 'estado=? and usuario_id=?', [$estado, $id]);
}
//Cargas las series favoritas de un usuario
public function getSeriesFavoritas($id){
    return R::findAll('seriefavorito', 'usuario_id=?', [$id]);
}
//Cargas el estado de favorito de una serie de un usuario
public function cargaFavorito($usuario, $serie){
    $ok=false;
    $bean= R::findAll('seriefavorito', 'usuario_id=? and serie_id=?', [$usuario, $serie]);
    $ok=$bean!=null;
    if($ok){
        return "Encontrado";
    }
    else{
        return "No encontrado";
    }
}
//Cargar el estado de una serie de un usuario
public function cargaEstado($usuario, $serie){
    $ok=false;
    $bean= R::findOne('serieestado', 'usuario_id=? and serie_id=?', [$usuario, $serie]);
    $ok=$bean!=null;
    if($ok){
        return $bean->estado;
    }
    else{
        return "nada";
    }
}
//Cargar la valoración de una serie de un usuario
public function cargaValoracion($usuario, $serie){
    $ok=false;
    $bean= R::findOne('serievaloracion', 'usuario_id=? and serie_id=?', [$usuario, $serie]);
    $ok=$bean!=null;
    if($ok){
        return $bean->valor;
    }
    else{
        return "nada";
    }
}
//CARGAR LAS SERIES MÁS VALORADAS
public function getSeriesMasValoradas(){
    $ok=false;
    $bean= R::findAll('serie');
    $ok=$bean!=null;
    $series=[];
    $media=null;
    if($ok){
        foreach($bean as $b){
            $this->load->model('serie_model');
            $media=$this->serie_model->getValoracionMedia($b->id);
            if($media>=4){
                array_push($series, $b);
            }
        }
        return $series;
    }
    else{
        return null;
    }
}
//CARGAR LA VALORACIÓN MEDIA DE UNA SERIE
public function getValoracionMedia($id){
    $ok=false;
    $bean= R::find('serievaloracion', 'serie_id=?', [$id]);
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
        return ;
    }
}
//CARGAR LAS 10 PRIMERAS SERIES ORDENADAS POR FECHA(DESDE LA MÁS RECIENTE)
public function getSeriesRecientes(){
    $ok=false;
    $bean= R::findAll('serie', 'order by fecha desc limit 10');
    $ok=$bean!=null;
    $media=null;
    if($ok){
        return $bean;
    }
    else{
        return null;
    }
}
public function deleteComentario($id){
    $bean=R::load('seriecomentario', $id);
    R::trash($bean);
}
//BUSCAR SERIES A PARTIR DE UNA PARTE DE SU NOMBRE
public function buscaSeries($cadena){
    return R::findAll('serie', 'nombre LIKE ?', [$cadena."%"]);
}
//Cargar las series recomendadas para un usuario
public function getSeriesRecomendadas($id){
    $beans= R::getAssoc("Select * from serievaloracion where usuario_id=? and valor>4", [$id]);
    $claves=array_keys($beans);
    $i=0;
    $datos=array();
    foreach($beans as $bean){
        $dato=["id"=> $claves[$i], "valor"=>$bean["valor"], "usuario_id"=>$bean["usuario_id"], "serie_id"=>$bean["serie_id"]];
        $datos[$i]=$dato;
        $i++;
    }
    $ok=$beans!=null;
    $seriesMasValoradas=array();
    $seriesValoradas=array();
    $seriesCasiRecomendadas=array();
    $seriesRecomendadas=[];
    $generos=array();
    $generosUsados=array();
    if($ok){
        foreach($datos as $ser){
            $serie=R::findOne('serie', "id=?", [$ser['serie_id']]);
            if(!in_array($serie->genero, $generosUsados)){
                array_push($generosUsados, $serie->genero);
            }
        }
        foreach($generosUsados as $gen){
            $seriesMasValoradas=array_merge($seriesMasValoradas, R::findAll('serie', 'genero=?', [$gen]));
        }
        $valor=0;
        if($seriesMasValoradas!=null){
            foreach($seriesMasValoradas as $serie){
                $seriesCasiRecomendadas=array_merge($seriesCasiRecomendadas, R::findAll('serievaloracion', 'serie_id=?', [$serie->id]));
                
            }
            foreach($seriesCasiRecomendadas as $serie){
                $valor=$this->getValoracionMedia($serie->id);
                if($valor>=4){
                    array_push($seriesRecomendadas, $serie);
                }
            }
            }
        return $seriesRecomendadas;
    }
    else{
        return null;
    }
}
}