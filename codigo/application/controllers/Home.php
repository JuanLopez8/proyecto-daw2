<?php
class Home extends CI_Controller {
    //Página principal, cargar las obras más valoradas y más recientes
    public function presentacion() {
        $this->load->model("pelicula_model");
        $this->load->model("serie_model");
        $this->load->model("libro_model");
        $this->load->model("musica_model");

        $data['pelisMasValoradas']=null;
        $data['pelisMasValoradas']=$this->pelicula_model->getPeliculasMasValoradas();

        $data['seriesMasValoradas']=null;
        $data['seriesMasValoradas']=$this->serie_model->getSeriesMasValoradas();
        
        $data['librosMasValorados']=null;
        $data['librosMasValorados']=$this->libro_model->getLibrosMasValorados();

        $data['musicasMasValoradas']=null;
        $data['musicasMasValoradas']=$this->musica_model->getMusicasMasValoradas();
        
        $data['pelisRecientes']=null;
        $data['pelisRecientes']=$this->pelicula_model->getPeliculasRecientes();

        $data['seriesRecientes']=null;
        $data['seriesRecientes']=$this->serie_model->getSeriesRecientes();

        $data['librosRecientes']=null;
        $data['librosRecientes']=$this->libro_model->getLibrosRecientes();

        $data['musicasRecientes']=null;
        $data['musicasRecientes']=$this->musica_model->getMusicasRecientes();

        session_start();
        if(isset($_SESSION['id']) && $_SESSION['id']!=null){
            $data['pelisRecomendadas']=null;
            $data['pelisRecomendadas']=$this->pelicula_model->getPeliculasRecomendadas($_SESSION['id']);
    
            $data['seriesRecomendadas']=null;
            $data['seriesRecomendadas']=$this->serie_model->getSeriesRecomendadas($_SESSION['id']);
    
            $data['librosRecomendados']=null;
            $data['librosRecomendados']=$this->libro_model->getLibrosRecomendados($_SESSION['id']);
    
            $data['musicasRecomendadas']=null;
            $data['musicasRecomendadas']=$this->musica_model->getMusicasRecomendadas($_SESSION['id']);
        }
        frame($this,'home/index', $data);
    }
    public function adios() {
        frame($this,'home/adios');
    }
    //Devuelve el resultado de una búsqueda de una obra
    public function cargaResultados(){
        $cadena=$_REQUEST['cadena'];
        $peliculas=array();
        $series=array();
        $musicas=array();
        $libros=array();

        $pelis=null;
        $seriesB=null;
        $musicasB=null;
        $librosB=null;

        if($cadena!=null && $cadena!=""){
            $this->load->model("pelicula_model");
            $this->load->model("serie_model");
            $this->load->model("musica_model");
            $this->load->model("libro_model");
            $pelis=$this->pelicula_model->buscaPeliculas($cadena);
            $seriesB=$this->serie_model->buscaSeries($cadena);
            $musicasB=$this->musica_model->buscaMusica($cadena);
            $librosB=$this->libro_model->buscaLibros($cadena);
        }
        $xml = new SimpleXMLElement('<root/>');
        $peliculas=$xml->addChild('peliculas');
        foreach($pelis as $peli){
            $pelicula=$peliculas->addChild('pelicula');
            $pel=$pelicula->addChild('id', $peli->id);
            $pel=$pelicula->addChild('nombre', $peli->nombre);
        }
        $musicas=$xml->addChild('musicas');
        foreach($musicasB as $music){
            $musica=$musicas->addChild('musica');
            $m=$musica->addChild('id', $music->id);
            $m=$musica->addChild('nombre', $music->nombre);
        }
        $series=$xml->addChild('series');
        foreach($seriesB as $serie){
            $ser=$series->addChild('serie');
            $s=$ser->addChild('id', $serie->id);
            $s=$ser->addChild('nombre', $serie->nombre);
        }
        $libros=$xml->addChild('libros');
        foreach($librosB as $libro){
            $lib=$libros->addChild('libro');
            $l=$lib->addChild('id', $libro->id);
            $l=$lib->addChild('nombre', $libro->nombre);
        }
        echo $xml->asXML();
    }
    //Comprobar la palabra secreta para convertir a un usuario en administrador
    public function comprobarPalabra(){
        $palabra=$_REQUEST['palabra'];
        if($palabra=="jonolulu"){
            session_start();
            $this->load->model("usuario_model");
            $this->usuario_model->hacerUsuarioAdmin($_SESSION['id']);
            session_destroy();
            frame($this, "usuario/login");
        }
        else{
            frame($this, "usuario/error");
        }
    }
    //Presentación
    public function index() {
        $this->presentacion();
    }
}
?>