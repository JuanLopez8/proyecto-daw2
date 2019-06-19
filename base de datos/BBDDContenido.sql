-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-06-2019 a las 22:14:24
-- Versión del servidor: 10.3.14-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id9954489_proyecto`
--
CREATE DATABASE IF NOT EXISTS `id9954489_proyecto_back` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id9954489_proyecto_back`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_paginas` int(11) UNSIGNED DEFAULT NULL,
  `autor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editorial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` int(11) UNSIGNED DEFAULT NULL,
  `ruta_caratula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id`, `nombre`, `descripcion`, `genero`, `numero_paginas`, `autor`, `editorial`, `fecha`, `ruta_caratula`, `usuario_id`) VALUES
(1, 'Harry Potter y la Piedra Filosofal', 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley. Harry se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicería. A partir de ese momento, la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprenderá encantamientos, trucos fabulosos y tácticas de defensa contra las malas artes. Se convertirá en el campeón escolar de quidditch, especie de fútbol aéreo que se juega montado sobre escobas, y se hará un puñado de buenos amigos... aunque también algunos temibles enemigos. Pero sobre todo, conocerá los secretos que le permitirán cumplir con su destino. Pues, aunque no lo parezca a primera vista, Harry no es un chico común y corriente. ¡Es un verdadero mago!', 'cienciaficcion', 342, 'J.K. Rowling', 'Ediciones Salamandra', 1997, 'assets/img/caratulas/libros/hp y la piedra filosofal.jpg', NULL),
(2, 'Harry Potter y la Camara Secreta', 'Tras derrotar una vez más a lord Voldemort, su siniestro enemigo en Harry Potter y la piedra filosofal, Harry espera impaciente en casa de sus insoportables tíos el inicio del segundo curso del Colegio Hogwarts de Magia y Hechicería.Sin embargo, la espera dura poco, pues un elfo aparece en su habitación y le advierte que una amenaza mortal se cierne sobre la escuela. Así pues, Harry no se lo piensa dos veces y, acompañado de Ron, su mejor amigo, se dirige a Hogwarts en un coche volador. Pero ¿puede un aprendiz de mago defender la escuela de los malvados que pretenden destruirla? Sin saber que alguien ha abierto la Cámara de los Secretos, dejando escapar una serie de monstruos peligrosos, Harry y sus amigos Ron y Hermione tendrán que enfrentarse con arañas gigantes, serpientes encantadas, fantasmas enfurecidos y, sobre todo, con la mismísima ', 'cienciaficcion', 243, 'J.K. Rowling', 'Ediciones Salamandra', 1998, 'assets/img/caratulas/libros/hp y la camara secreta.jpg', NULL),
(3, 'Harry Potter y el Prisionero de Azkaban', 'Igual que en las dos primeras partes de la serie, Harry aguarda con impaciencia el inicio del tercer curso en el Colegio Hogwarts de Magia. Tras haber cumplido los trece años, solo y lejos de sus amigos, Harry se pelea con su bigotuda tía Marge, a la que convierte en globo, y debe huir en un autobús mágico. Mientras tanto, de la prisión de Azkaban se ha escapado un terrible villano, Sirius Black, un asesino en serie con poderes mágicos que fue cómplice de lord Voldemort y que parece dispuesto a borrar a Harry del mapa. Y por si esto fuera poco, Harry deberá enfrentarse también a unos terribles monstruos, los dementores, seres abominables capaces de robarles la felicidad a los magos y de eliminar todo recuerdo hermoso de aquellos que osan mirarlos. Lo que ninguno de estos malvados personajes sabe es que Harry, con la ayuda de sus fieles amigos Ron y Hermione, es capaz de todo y mucho más.', 'cienciaficcion', 293, 'J.K. Rowling', 'Ediciones Salamandra', 1999, 'assets/img/caratulas/libros/hp y el prisionero de azkaban.jpg', NULL),
(4, 'Harry Potter y el Caliz de Fuego', 'Tras otro abominable verano con los Dursley, Harry se dispone a iniciar el cuarto curso en Hogwarts, la famosa escuela de magia y hechicería. A sus catorce años, a Harry le gustaría ser un joven mago como los demás y dedicarse a aprender nuevos sortilegios, encontrarse con sus amigos Ron y Hermione y asistir con ellos a los Mundiales de Quidditch. Sin embargo, al llegar al colegio lo espera una gran sorpresa que lo obligará a enfrentarse a los desafíos más temibles de toda su vida. Si logra superarlos, habrá demostrado que ya no es un niño y que está preparado para vivir las nuevas y emocionantes experiencias que el futuro le depara.', 'cienciaficcion', 503, 'J.K. Rowling', 'Ediciones Salamandra', 2000, 'assets/img/caratulas/libros/hp y el caliz de fuego.jpg', NULL),
(5, 'Harry Potter y la Orden del Fenix', 'Las tediosas vacaciones en casa de sus tíos todavía no han acabado y Harry Potter se encuentra más inquieto que nunca. Apenas ha tenido nocitias de Ron y Hermiones, y presiente que algo extraño está sucediendo en Hogwarts. En efecto, cuando por fin comienza otro curso en el famoso colegio de magia y hechicería, sus temores se vuelven realidad. El Ministerio de Magia niega que Voldemort haya regresado y ha iniciado una campaña de desprestigio contra Harry Potter y Dumbledore, para lo cual ha asignado a la horrible profesora Dolores Umbridge la tarea de vigilar todos sus movimientos. Así pues, además de sentirse solo e incomprendido, Harry sospecha que Voldemort puede adivinar sus pensamientos, e intuye que el temible mago trata de apoderarse de un objeto secreto que le permitiría recuperar su poder destructivo.', 'cienciaficcion', 640, 'J.K. Rowling', 'Ediciones Salamandra', 3, 'assets/img/caratulas/libros/hp y la orden del fenix.jpg', NULL),
(6, 'Harry Potter y el Misterio del Principe', 'Con dieciséis años cumplidos, Harry Potter inicia el sexto curso en Hogwarts en medio de terribles acontecimientos que asolan Inglaterra. Elegido capitán del equipo de Quidditch, los entrenamientos, los exámenes y las chicas ocupan todo su tiempo, pero la tranquilidad dura poco. A pesar de los férreos controles de seguridad que protegen la escuela, dos alumnos son brutalmente atacados. Dumbledore sabe que se acerca el momento, anunciado por la Profecía, en que Harry Potter y Voldemort se enfrentarán a muerte: «El único con poder para vencer al Señor Tenebroso se acerca... Uno de los dos debe morir a manos del otro, pues ninguno de los dos podrá vivir mientras siga el otro con vida.». El anciano director solicitará la ayuda de Harry y juntos emprenderán peligrosos viajes para intentar debilitar al enemigo, para lo cual el joven mago contará con la ayuda de un viejo libro de pociones perteneciente a un misterioso príncipe, alguien que se hace llamar Príncipe Mestizo.', 'cienciaficcion', 435, 'J.K. Rowling', 'Ediciones Salamandra', 2005, 'assets/img/caratulas/libros/hp y el misterio del principe.jpg', NULL),
(7, 'Harry Potter y las Reliquias de la Muerte', 'Harry Potter tiene que realizar una tarea siniestra, peligrosa y aparentemente imposible: el de localizar y de destruir a Horcruxes. Harry nunca se sintió tan sólo ni se enfrentó a un futuro tan incierto. Pero Harry Potter debe encontrar la fuerza necesaria para terminar la tarea que le han dado. Él debe dejar el calor, la seguridad y el compañerismo de La Madriguera y seguir sin miedo el camino inexorable marcado para él. En este final, la séptima entrega de la serie Harry Potter, J.K. Rowling revela de manera espectacular las respuestas a las muchas preguntas que se han estado esperando con tanta impaciencia. Su rica prosa y su narrativa, llena de giros inesperados, han hecho que estos libros sean libro para leer y releer una y otra vez.', 'cienciaficcion', 650, 'J.K. Rowling', 'Ediciones Salamandra', 2007, 'assets/img/caratulas/libros/hp y las reliquias de la muerte.jpg', NULL),
(8, 'Harry Potter y el Legado Maldito', 'Co-escrito por J. K. Rowling, Jack Thorne y John Tiffany, este es el guion de una obra teatral, que a pesar de no tener el formato de novela de los libros anteriores, es una continuación de la historia y nos cuenta que es de la vida de nuestros amados personajes, 19 años después.«Ser Harry Potter nunca ha sido tarea fácil, menos aún desde que se ha convertido en un atareadísimo empleado del Ministerio de Magia, un hombre casado y padre de tres hijos. Y si Harry planta cara a un pasado que se resiste a quedar atrás, su hijo menor, Albus Severus, ha de luchar contra el peso de una herencia familiar de la que él nunca ha querido saber nada. Cuando el destino conecte el pasado con el presente, padre e hijo deberán afrontar una verdad muy incómoda: a veces, la oscuridad surge de los lugares más insospechados».', 'cienciaficcion', 336, 'J.K. Rowling', 'Ediciones Salamandra', 2016, 'assets/img/caratulas/libros/hp y el legado maldito.jpg', NULL),
(9, 'Cincuenta Sombras de Grey', 'Cuando la estudiante de literatura Anastasia Steele recibe el encargo de entrevistar al exitoso y joven empresario Christian Grey, queda impresionada al encontrarse ante un hombre atractivo, seductor y también muy intimidante. La inexperta e inocente Ana intenta olvidarle, pero pronto comprende cuánto le desea. Grey está atormentado por sus propios demonios y le consume la necesidad de controlarlo todo, aunque a su vez se ve incapaz de resistirse a la serena belleza de Ana, a su inteligencia y a su espíritu independiente. Debe admitir que la desea, pero bajo ciertas condiciones. Cuando la pareja inicia por fin una apasionada relación, las peculiares prácticas sexuales de Grey desconciertan a Ana, al tiempo que ella descubre los límites de sus propios y más oscuros deseos.', 'literaturaerotica', 540, 'E.L. James', 'Grijalbo', 2011, 'assets/img/caratulas/libros/cincuenta sombras de grey.jpg', NULL),
(10, 'Cincuenta Sombras Más Oscuras', 'Intimidada por las peculiares prácticas eróticas y los oscuros secretos del atractivo y atormentado empresario Christian Grey, Anastasia Steele decide romper con él y embarcarse en una nueva carrera profesional en una editorial de Seattle. Pero el deseo por Christian todavía domina cada uno de sus pensamientos, y cuando final mente él le propone retomar su aventura, Ana no puede resistirse. Reanudan entonces su tórrida y sensual relación, pero mientras Christian lucha contra sus propios demonios del pasado, Ana debe enfrentarse a la ira y la envidia de las mujeres que la precedieron, y tomar la decisión más importante de su vida.', 'literaturaerotica', 544, 'E.L. James', 'Grijalbo', 2011, 'assets/img/caratulas/libros/cincuenta sombras mas oscuras.jpg', NULL),
(11, 'Cincuenta Sombras Liberadas', 'Anastasia y Christian se han casado. Ana cree estar viviendo un sueño: jamás en su vida habría imaginado que se casaría ni a esa edad... ni con un hombre como Christian. Además, está pasando unos días fantásticos con Christian en su luna de miel... pero este todavía vive amenzazado por sus cincuenta sombras, y hay una persona que no descansará hasta hacerles daño...', 'literaturaerotica', 592, 'E.L. James', 'Grijalbo', 2012, 'assets/img/caratulas/libros/cincuenta sombras liberadas.jpg', NULL),
(12, 'Grey', 'E.L. James nos ofrece una nueva perspectiva de la historia de amor que ya ha seducido a millones de lectores en todo el mundo, contada ahora en primera persona por Christian Grey. Christian necesita tenerlo todo bajo control. Su mundo es puro orden y disciplina aunque, en el fondo, está vacío... hasta el día en que Anastasia Steele aterriza de bruces en su despacho, hecha una maraña de largo pelo castaño y esbeltas piernas. Él intenta olvidarla pero, muy al contrario, se ve inmerso en una tormenta de emociones que no consigue controlar y a la que no puede resistirse. A diferencia de todas las mujeres que ha conocido, la tímida e inexperta Ana parece capaz de ver más allá del exitoso empresario y la lujosa vida que le rodea, y descubrir el corazón frío y lastimado de Christian. ¿Logrará su relación con Ana disipar las pesadillas que le acechan todas las noches? ¿O serán sus oscuros impulsos sexuales, su obsesión por el control y el desprecio hacia sí mismo los que alejarán a la joven y destruirán la frágil esperanza que ella le ofrece?', 'literaturaerotica', 576, 'E.L. James', 'Grijalbo', 2015, 'assets/img/caratulas/libros/grey.jpg', NULL),
(13, 'Más Oscuro', 'Aunque aquella ardiente y sensual relación acabó marcada por el sufrimiento y los reproches, Christian Grey no logra quitarse a Anastasia de la cabeza ni del corazón. Decidido a recuperarla y a amarla aceptando sus condiciones, intenta reprimir sus deseos más oscuros y la necesidad de tenerlo todo bajo control. Sin embargo, las pesadillas de la infancia no dejan de perseguirle y, además, el insidioso jefe de Ana, Jack Hyde, claramente la quiere para él. ¿Podrá el doctor Flynn, psicólogo y confidente de Christian, ayudarle a enfrentarse a sus propios fantasmas, o acabarán la posesiva y seductora maestra Elena y la perturbada Leila, su devota y anterior sumisa, arrastrando a Grey al pasado? Y si finalmente consigue recuperar a Ana, ¿será capaz, un hombre tan oscuro y lastimado, de retenerla a su lado?', 'literaturaerotica', 640, 'E.L. James', 'Grijalbo', 2017, 'assets/img/caratulas/libros/mas oscuro.jpg', NULL),
(14, 'El Corredor del Laberinto', '«Bienvenido al Claro. Verás que una vez a la semana, siempre el mismo día y a la misma hora, nos llegan víveres. Una vez al mes, siempre el mismo día y a la misma hora, aparece un nuevo chico, como tú. Siempre un chico. Como ves, este lugar está cercado por muros de piedra… Has de saber que estos muros se abren por la mañana y se cierran por la noche, siempre a la hora exacta. Al otro lado se encuentra el laberinto. De noche, las puertas se cierran… y, si quieres sobrevivir, no debes estar allí para entonces».  Todo sigue un orden… y, sin embargo, al día siguiente suena una alarma. Significa que ha llegado alguien más. Para asombro de todos, es una chica. Su llegada vendrá acompañada de un mensaje que cambiará las reglas del juego.', 'misterio', 396, 'James Dashner', 'Nocturna Ediciones', 2009, 'assets/img/caratulas/libros/el corredor del laberinto.jpg', NULL),
(15, 'El Corredor del Laberinto - Las Pruebas', 'Resolver el laberinto se suponía que era el final. No más pruebas, no más huidas. Thomas creía que salir significaba que todos recobrarían sus vidas, pero ninguno sabía a qué clase de vida estaban volviendo. Árida y carbonizada, gran parte de la tierra es un territorio inservible. El sol abrasa, los gobiernos han caído y una misteriosa enfermedad se ha ido apoderando poco a poco de la gente. Sus causas son desconocidas; su resultado, la locura. En un lugar infestado de miseria y ruina, y por donde la gente ha enloquecido y deambula en busca de víctimas, Thomas conoce a una chica, Brenda, que asegura haber contraído la enfermedad y estar a punto de sucumbir a sus efectos. Entretanto, Teresa ha desaparecido, la organización CRUEL les ha dejado un mensaje, un misterioso chico ha llegado y alguien ha tatuado unas palabras en los cuellos de los clarianos. La de Minho dice «el líder»; la de Thomas, «el que debe ser asesinado».', 'misterio', 496, 'James Dashner', 'Nocturna Ediciones', 2010, 'assets/img/caratulas/libros/el corredor del laberinto las pruebas.jpg', NULL),
(16, 'El Corredor del Laberinto - La Cura Mortal', 'Thomas no puede confiar en CRUEL. Lo organización le robó sus recuerdos y lo encerró en el Laberinto. Luego lo dejó al borde de la muerte, en el Desierto. Y lo separó de los Habitantes, sus únicos amigos. Ahora CRUEL asegura que el tiempo de las mentiras ha terminado. Con toda la información que reunió gracias a las Pruebas, está en condiciones de avanzar en la cura de la Llamarada. Pero Thomas debe pasar por la Prueba Final. ¿Logrará sobrevivir al procedimiento? ¿Será cierto que se terminaron las mentiras? Quizá la verdad sea más terrible aún... una solución letal, sin retorno.', 'misterio', 325, 'James Dashner', 'Nocturna Ediciones', 2011, 'assets/img/caratulas/libros/el corredor del laberinto la cura mortal.jpg', NULL),
(17, 'El Hobbit', 'Smaug parecía profundamente dormido cuando Bilbo espió una vez más desde la entrada. ¡Pero fingía estar dormido! ¡Estaba vigilando la entrada del túnel!... Sacado de su cómodo agujero-hobbit por Gandalf y una banda de enanos, Bilbo se encuentra de pronto en medio de una conspiración que pretende apoderarse del tesoro de Smaug el Magnífico, un enorme y muy peligroso dragón... \"Todos los que aman esos libros para niños que pueden ser leídos y releídos por adultos han de tomar buena nota de que una nueva estrella ha aparecido en esa constelación.\" ', 'fantasia', 288, 'J.R.R Tolkien', 'George Allen', 1937, 'assets/img/caratulas/libros/el hobbit.jpg', NULL),
(18, 'El Señor de Los Anillos - La Comunidad del Anillo', 'En la adormecida e idílica Comarca, un joven hobbit recibe un encargo: custodiar el Anillo Único y emprender el viaje para su destrucción en las Grietas del Destino. Consciente de la importancia de su misión, Frodo abandona la Comarca e inicia el camino hacia Mordor con la compañía de inesperada de Sam, Pippin y Merry.  Pero sólo con la ayuda de Aragorn conseguirán vencer a los Jinetes Negros y alcanzar el refugio de la Casa de Elrond en Rivendel.', 'fantasia', 423, 'J.R.R Tolkien', 'George Allen', 1954, 'assets/img/caratulas/libros/esdla la comunidad del anillo.jpg', NULL),
(19, 'El Señor de Los Anillos - Las Dos Torres', 'La Compañía se ha disuelto y sus integrantes emprenden caminos separados. Frodo y Sam continúan solos su viaje a lo largo del río Anduin, perseguidos por la sombra misteriosa de un ser extraño que también ambiciona la posesión del Anillo. Mientras, hombres, elfos y enanos se preparan para la batalla final contra las fuerzas del Señor del Mal.', 'fantasia', 352, 'J.R.R Tolkien', 'George Allen', 1954, 'assets/img/caratulas/libros/esdla las dos torres.jpg', NULL),
(20, 'El Señor de Los Anillos - El Retorno del Rey', 'Los ejércitos del Señor Oscuro van extendiendo cada vez más su maléfica sombra por la Tierra Media. Hombres, elfos y enanos unen sus fuerzas para presentar batalla a Sauron y sus huestes. Ajenos a estos preparativos, Frodo y Sam siguen adentrándose en el país de Mordor en su heroico viaje para destruir el Anillo de Poder en las Grietas del Destino.', 'fantasia', 416, 'J.R.R Tolkien', 'George Allen', 1955, 'assets/img/caratulas/libros/esdla el retorno del rey.jpg', NULL),
(21, 'Los Juegos del Hambre', 'GANAR SIGNIFICA FAMA Y RIQUEZA. PERDER SIGNIFICA UNA MUERTE SEGURA. En una oscura versión del futuropróximo, doce chicos y doce chicas se ven obligados a participar en un reality show llamado Los juegos del hambre. Solohay una regla: matar o morir. Cuando Katniss Everdeen, una joven de dieciséis añosse presenta voluntaria para ocuparel lugar de su hermana en los juegos, lo entiende como una condena a muerte. Sin embargo Katniss ya ha visto la muertede cerca y la supervivencia forma parte de su naturaleza. ¡Que empiecen los septuagésimo cuartos juegos del hambre!', 'aventura', 400, 'Suzanne Collins', 'RBA', 2008, 'assets/img/caratulas/libros/los juegos del hambre.jpg', NULL),
(22, 'Los Juegos del Hambre - En Llamas', 'Katniss Everdeen ha sobrevivido a Los juegos del hambre. Pero el Capitolio quiere venganza. Contra todopronóstico, Katniss Everdeen y Peeta Mellark siguen vivos. Aunque Katniss debería sentirse aliviada, se rumorea queexiste una rebelión contra el Capitolio, una rebelión que puede que Katniss y Peeta hayan ayudado a inspirar. La naciónles observa y hay mucho en juego. Un movimiento en falso y las consecuencias serán inimaginables.', 'aventura', 391, 'Suzanne Collins', 'RBA', 2009, 'assets/img/caratulas/libros/los juegos del hambre en llamas.jpg', NULL),
(23, 'Los Juegos del Hambre - Sinsajo', 'Katnis Everdeen ha sobrevivido dos veces a Los juegos del hambre, pero no está a salvo. La revolución seextiende y, al parecer, todos han tenido algo que ver en el meticuloso plan, todos excepto Katniss. Aun así su papel enla batalla final es el más importante de todos. Katniss debe convertirse en el Sinsajo, en el símbolo de la rebelión...a cualquier precio. ¡Que empiecen los septuagésimo sextos juegos del hambre!', 'aventura', 390, 'Suzanne Collins', 'RBA', 210, 'assets/img/caratulas/libros/los juegos del hambre sinsajo.jpg', NULL),
(24, 'El Resplandor', '¿Qué ha sido de Danny Torrance? Descúbrelo al final de este volumen, que incluye el inicio de Doctor Sueño, la continuación de El resplandor.REDRUM. Esa es la palabra que Danny había visto en el espejo. Y, aunque no sabía leer, entendió que era un mensaje de horror. Tenía cinco años, y a esa edad pocos niños son conscientes de que los espejos invierten las imágenes, y menos aún diferencian entre realidad y fantasía. Pero Danny tenía pruebas de que sus fantasías relacionadas con el resplandor del espejo acabarían cumpliéndose: REDRUM... MURDER, asesinato.Su madre estaba pensando en el divorcio, y su padre, obsesionado con algo muy malo, tan malo como la muerte y el suicidio, necesitaba aceptar la propuesta de cuidar de aquel hotel de lujo, de más de cien habitaciones aislado por la nieve, durante seis meses. Hasta el deshielo iban a estar solos. ¿Solos?...«Terrorífica... ofrece horrores a un ritmo intenso e infatigable.»The New York Times', 'terror', 447, 'Stephen King', 'Doubleday', 1977, 'assets/img/caratulas/libros/el resplandor.jpg', NULL),
(25, 'IT', 'Tras lustros de tranquilidad y lejania una antigua promesa infantil les hace volver al lugar en el que vivieron su infancia y juventud como una terrible pesadilla. Regresan a Derry para enfrentarse con su pasado y enterrar definitivamente la amenaza que los amargó durante su niñez. Saben que pueden morir, pero son conscientes de que no conocerán la paz hasta que aquella cosa sea destruida para siempre. It es una de las novelas más ambiciosas de Stephen King, donde ha logrado perfeccionar de un modo muy personal las claves del género de terror ﻿', 'terror', 1138, 'Stephen King', 'Viking Press', 1986, 'assets/img/caratulas/libros/it.jpg', NULL),
(26, 'La Cupula', 'En una soleada mañana de otoño en la pequeña ciudad de Chester\'s Mill, Claudette Sanders disfruta de su clase de vuelo, y Dale Barbara, Barbie para los amigos, hace autostop en las afueras. Ninguno de los dos llegará a su destino... De repente, una barrera invisible ha caído sobre la ciudad como una burbuja cristalina e inquebrantable. Al descender, ha cortado por la mitad a una marmota y ha amputado la mano a una mujer que estaba arreglando su jardín. El avión que pilotaba Claudette ha chocado contra la cúpula y se ha precipitado al suelo envuelto en llamas. Dale, veterano de la guerra de Irak, ha de regresar a Chester\'s Mill, el lugar que tanto deseaba abandonar. El ejército pone a Barbie al cargo de la situación, pero Big Jim Rennie, el hombre que tiene un pie en todos los negocios sucios de la ciudad, no está de acuerdo: la cúpula podría ser la respuesta a sus plegarias. A medida que la comida, la electricidad y el agua escasean, los niños comienzan a tener premoniciones escalofriantes. El tiempo se acaba para aquellos que viven bajo la cúpula. ¿Podrán averiguar qué ha creado tan terrorífica prisión antes de que sea demasiado tarde?', 'novela', 1136, 'Stephen King', 'Plaza', 2009, 'assets/img/caratulas/libros/la cupula.jpg', NULL),
(27, 'El Código Da Vinci ', 'Robert Langdon recibe una llamada en mitad de la noche: el conservador del museo del Louvre ha sido asesinado en extrañas circunstancias y junto a su cadáver ha aparecido un desconcertante mensaje cifrado. Al profundizar en la investigación, Langdon, experto en simbología, descubre que las pistas conducen a las obras de Leonardo Da Vinci… y que están a la vista de todos, ocultas por el ingenio del pintor.', 'suspense', 624, 'Dan Brown', 'Plaza', 2003, 'assets/img/caratulas/libros/el codigo da vinci.jpg', NULL),
(28, 'Origen ', 'Robert Langdon. profesor de simbología e iconografía religiosa de la universidad de Harvard. acude al Museo Guggenheim Bilbao para asistir a un trascendental anuncio que cambiará la faz de la ciencia para siempre. El anfitrión de la velada es Edmond Kirsch. un joven multimillonario cuyos visionarios inventos tecnológicos y audaces predicciones lo han convertido en una figura de renombre mundial. Kirsch. uno de los alumnos más brillantes de Langdon años atrás. se dispone a revelar un extraordinario descubrimiento que dará respuesta a las dos preguntas que han obsesionado a la humanidad desde el principio de los tiempos. ¿DE DÓNDE VENIMOS? ¿ADÓNDE VAMOS? Al poco tiempo de comenzar la presentación. meticulosamente orquestada por Edmond Kirsch y la directora del museo Ambra Vidal. estalla el caos para asombro de cientos de invitados y millones de espectadores en todo el mundo. Ante la inminente amenaza de que el valioso hallazgo se pierda para siempre. Langdon y Ambra deben huir desesperadamente a Barcelona e iniciar una carrera contrarreloj para localizar la críptica contraseña que les dará acceso al revolucionario secreto de Kirsch. Perseguidos por un atormentado y peligroso enemigo. Langdon y Ambra descubrirán los episodios más oscuros de la Historia y del extremismo religioso. Siguiendo un rastro de pistas compuesto por obras de arte moderno y enigmáticos símbolos. tendrán pocas horas para intentar desvelar la fascinante investigación de Kirsch…. y su sobrecogedora revelación sobre el origen y el destino de la Humanidad. ORIGEN se desarrolla íntegramente en España. Barcelona. Bilbao. Madrid y Sevilla son los escenarios principales en los que transcurre la nueva aventura de Robert Langdon. De la mano del autor de El código Da Vinci. el lector recorrerá escenarios como el Monasterio de Montserrat. la Casa Milà (La Pedrera). la Sagrada Familia. el Museo Guggenheim Bilbao. el Palacio Real o la Catedral de Sevilla. Como ya sucedió con París en El código Da Vinci. con Roma en Ángeles y demonios o con Florencia en Inferno. los escenarios de las novelas de Dan Brown siempre han sido un elemento clave en sus tramas.', 'suspense', 640, 'Dan Brown', 'Plaza', 2017, 'assets/img/caratulas/libros/origen.jpg', NULL),
(29, 'El Principito ', 'El valor de la amistad, el heroísmo como meta y la responsabilidad como motor de la conducta moral encuentran su plasmación definitiva en el mundo que descubre El principito , añorado planeta del que todos los hombres han sido exiliados y al que sólo mediante la fabulación cabe regresar.', 'literaturainfantil', 96, 'Antonie de Saint-Expéry', 'Reynal & Hitchock', 2008, 'assets/img/caratulas/libros/el principito.jpg', NULL),
(30, 'Los Pilares de la Tierra ', 'El gran maestro de la narrativa de acción y suspense nos transporta a la Edad Media, a un fascinante mundo de reyes, damas, caballeros, pugnas feudales, castillos y ciudades amuralladas. El amor y la muerte se entrecruzan vibrantemente en este magistral tapiz cuyo centro es la construcción de una catedral gótica. La historia se inicia con el ahorcamiento público de un inocente y finaliza con la humillación de un rey. Los pilares de la Tierra es la obra maestra de Ken Follett y constituye una excepcional evocación de una época de violentas pasiones.', 'novelahistorica', 1040, 'Ken Follet', 'Plaza', 2017, 'assets/img/caratulas/libros/los pilares de la tierra.jpg', NULL),
(31, 'miLibroPrueba2', 'miLibroPrueba2Descripcion', 'accion', 123, 'testP', 'Yo', 2019, NULL, 7),
(32, 'La leyenda de sara', 'Bienvenido al mundo de la fantasía y la aventura. En este pequeño mundo encontrás todo lo que buscabas. Acompaña a Sara a través de un mundo lleno de peligros, aventuras y personajes increíbles. Sara es una niña de trece años, que tras sufrir un accidente y conecer a Alan y a Trebor se embarcaran en una enorme aventura que dotará de enormes poderes. Si sois unos fánaticos de la magia, los poderes, y los mundos fantásticos esta es vuestra historia.', 'fantasia', 320, 'premium', 'Me gusta leer', 2012, 'assets/img/caratulas/libros/La leyenda de sara.jpg', 12),
(33, 'La Leyenda de Sara 2', 'Tras unos años de paz, Sara y Celia volverán a embarcarse en una gran aventura, buscando a los hijos del bosque y los misterios que esconde la vida pasada de Celia.Durante este viaje Sara volverá a entrenar sus habilidades con el Kyu negro para poder ayudar a sus amigos.Un gran viaje lleno de aventuras, fantasía y mucha emoción con nuevos amigos que ayudarán a Sara y a Celia durante su viaje.', 'fantasia', 324, 'premium', 'Me gusta leer', 2013, 'assets/img/caratulas/libros/La Leyenda de Sara 2.jpg', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librocomentario`
--

CREATE TABLE `librocomentario` (
  `id` int(11) UNSIGNED NOT NULL,
  `comentario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `libro_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `librocomentario`
--

INSERT INTO `librocomentario` (`id`, `comentario`, `usuario_id`, `libro_id`) VALUES
(1, 'Estaría mejor si fuera a color', 10, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libroestado`
--

CREATE TABLE `libroestado` (
  `id` int(11) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `libro_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `libroestado`
--

INSERT INTO `libroestado` (`id`, `estado`, `usuario_id`, `libro_id`) VALUES
(1, 'seguir', 10, 1),
(2, 'abandonada', 10, 2),
(3, 'abandonada', 10, 5),
(4, 'pendiente', 10, 10),
(5, 'pendiente', 10, 12),
(6, 'pendiente', 10, 13),
(7, 'seguir', 10, 15),
(8, 'abandonada', 10, 6),
(9, 'terminada', 10, 25),
(10, 'pendiente', 10, 22),
(11, 'pendiente', 10, 21),
(12, 'abandonada', 10, 28),
(13, 'pendiente', 10, 20),
(14, 'terminada', 12, 2),
(15, 'seguir', 12, 10),
(16, 'pendiente', 12, 12),
(17, 'seguir', 12, 22),
(18, 'terminada', 12, 21),
(19, 'seguir', 12, 33),
(20, 'abandonada', 12, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librofavorito`
--

CREATE TABLE `librofavorito` (
  `id` int(11) UNSIGNED NOT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `libro_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `librofavorito`
--

INSERT INTO `librofavorito` (`id`, `usuario_id`, `libro_id`) VALUES
(1, 10, 2),
(2, 10, 28),
(3, 10, 7),
(4, 10, 20),
(5, 12, 2),
(6, 12, 10),
(7, 12, 22),
(8, 12, 33),
(9, 12, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `librovaloracion`
--

CREATE TABLE `librovaloracion` (
  `id` int(11) UNSIGNED NOT NULL,
  `valor` int(11) UNSIGNED DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `libro_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `librovaloracion`
--

INSERT INTO `librovaloracion` (`id`, `valor`, `usuario_id`, `libro_id`) VALUES
(1, 5, 10, 1),
(2, 3, 10, 2),
(3, 4, 10, 5),
(4, 3, 10, 10),
(5, 2, 10, 12),
(6, 2, 10, 13),
(7, 5, 10, 15),
(8, 3, 10, 6),
(9, 4, 10, 25),
(10, 2, 10, 22),
(11, 5, 10, 21),
(12, 5, 10, 28),
(13, 5, 10, 20),
(14, 5, 12, 2),
(15, 3, 12, 10),
(16, 4, 12, 12),
(17, 5, 12, 22),
(18, 4, 12, 21),
(19, 5, 12, 33),
(20, 5, 12, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musica`
--

CREATE TABLE `musica` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grupo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `album` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` int(11) UNSIGNED DEFAULT NULL,
  `ruta_caratula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `duracion` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musica`
--

INSERT INTO `musica` (`id`, `nombre`, `grupo`, `album`, `genero`, `fecha`, `ruta_caratula`, `usuario_id`, `duracion`) VALUES
(1, 'Por mi y por todos mis compañeros', 'El canto del loco', 'Por mi y por todos mis compañeros', 'pop', 2009, 'assets/img/caratulas/musica/por mi y por todos mis compañeros.jpg', NULL, NULL),
(2, 'Personas', 'El canto del loco', 'Personas', 'pop', 2008, 'assets/img/caratulas/musica/personas.jpg', NULL, NULL),
(3, 'Zapatillas', 'El canto del loco', 'Zapatillas', 'pop', 2005, 'assets/img/caratulas/musica/zapatillas.jpg', NULL, NULL),
(4, 'Estados de animo', 'El canto del loco', 'Estados de animo', 'pop', 2003, 'assets/img/caratulas/musica/estados de animo.jpg', NULL, NULL),
(5, 'A contracorriente', 'El canto del loco', 'A contracorriente', 'pop', 2002, 'assets/img/caratulas/musica/a contracorriente.jpg', NULL, NULL),
(6, 'Rumba', 'Estopa', 'Destrangis', 'rumba', 2001, 'assets/img/caratulas/musica/destrangis.jpg', NULL, NULL),
(7, 'Rumba a lo desconocido', 'Estopa', 'Rumba a lo desconocido', 'rumba', 2015, 'assets/img/caratulas/musica/rumba a lo desconocido.jpg', NULL, NULL),
(8, '¿La calle es tuya?', 'Estopa', '¿La calle es tuya?', 'rumba', 2004, 'assets/img/caratulas/musica/la calle es tuya.jpg', NULL, NULL),
(9, 'La maqueta', 'Estopa', 'La maqueta', 'rumba', 1999, 'assets/img/caratulas/musica/la maqueta.jpg', NULL, NULL),
(10, 'Voces de ultratumba', 'Estopa', 'Voces de ultratumba', 'rumba', 2005, 'assets/img/caratulas/musica/voces de ultratumba.jpg', NULL, NULL),
(11, 'Highway to Hell', 'ACDC', 'Highway to Hell', 'rock', 1979, 'assets/img/caratulas/musica/highway to hell.jpg', NULL, NULL),
(12, 'Back in Black', 'ACDC', 'Back in Black', 'rock', 1980, 'assets/img/caratulas/musica/back in black.jpg', NULL, NULL),
(13, 'Rock or Bust', 'ACDC', 'Rock or Bust', 'rock', 2014, 'assets/img/caratulas/musica/rock or bust.jpg', NULL, NULL),
(14, 'High Voltage', 'ACDC', 'High Voltage', 'rock', 1976, 'assets/img/caratulas/musica/high voltage.jpg', NULL, NULL),
(15, 'Black Ice', 'ACDC', 'Black Ice', 'rock', 2008, 'assets/img/caratulas/musica/black ice.jpg', NULL, NULL),
(16, 'Sin noticias de holanda', 'Melendi', 'Sin noticias de holanda', 'pop', 2003, 'assets/img/caratulas/musica/sin noticias de holanda.jpg', NULL, NULL),
(17, 'Que el cielo espere sentado', 'Melendi', 'Que el cielo espere sentado', 'pop', 2005, 'assets/img/caratulas/musica/que el cielo espere sentado.jpg', NULL, NULL),
(18, 'Mientras no cueste trabajo', 'Melendi', 'Mientras no cueste trabajo', 'pop', 2006, 'assets/img/caratulas/musica/mientras no cueste trabajo.jpg', NULL, NULL),
(19, 'Lágrimas desordenadas', 'Melendi', 'Lágrimas desordenadas', 'pop', 2011, 'assets/img/caratulas/musica/lagrimas desordenadas.jpg', NULL, NULL),
(20, 'Un alumno más', 'Melendi', 'Un alumno más', 'pop', 2014, 'assets/img/caratulas/musica/un alumno mas.jpg', NULL, NULL),
(21, 'Metallica', 'Metallica', 'Metallica', 'metal', 1991, 'assets/img/caratulas/musica/metallica.jpg', NULL, NULL),
(22, 'Ride the lightning', 'Metallica', 'Ride the lightning', 'metal', 1984, 'assets/img/caratulas/musica/ride the lightning.jpg', NULL, NULL),
(23, 'Kill\'Em All', 'Metallica', 'Kill\'Em All', 'metal', 1983, 'assets/img/caratulas/musica/kill em all.jpg', NULL, NULL),
(24, 'Master of Puppets', 'Metallica', 'Master of Puppets', 'metal', 1986, 'assets/img/caratulas/musica/master of puppets.jpg', NULL, NULL),
(25, 'Load', 'Metallica', 'Load', 'metal', 1996, 'assets/img/caratulas/musica/load.jpg', NULL, NULL),
(26, 'El Vals del Obrero', 'SKA-P', 'El Vals del Obrero', 'ska', 1996, 'assets/img/caratulas/musica/el vals del obrero.jpg', NULL, NULL),
(27, 'Eurosis', 'SKA-P', 'Eurosis', 'ska', 1998, 'assets/img/caratulas/musica/eurosis.jpg', NULL, NULL),
(28, 'Lágrimas y Gozos', 'SKA-P', 'Lágrimas y Gozos', 'ska', 2008, 'assets/img/caratulas/musica/lagrimas y gozos.jpg', NULL, NULL),
(29, 'ska', 'SKA-P', '99%', 'ska', 2013, 'assets/img/caratulas/musica/99.jpg', NULL, NULL),
(30, 'Game Over', 'SKA-P', 'Game Over', 'ska', 2018, 'assets/img/caratulas/musica/game over.jpg', NULL, NULL),
(31, 'Finisterra', 'Mägo de Oz', 'Finisterra', 'Folk', 2000, 'assets/img/caratulas/musica/finisterria.jpg', NULL, NULL),
(32, 'Gaia', 'Mägo de Oz', 'Gaia', 'Folk', 2003, 'assets/img/caratulas/musica/gaia.jpg', NULL, NULL),
(33, 'La Leyenda de la Mancha', 'Mägo de Oz', 'La Leyenda de la Mancha', 'Folk', 1998, 'assets/img/caratulas/musica/la leyenda de la mancha.jpg', NULL, NULL),
(34, 'La ciudad de los árboles', 'Mägo de Oz', 'La ciudad de los árboles', 'Folk', 2007, 'assets/img/caratulas/musica/la ciudad de los arboles.jpg', NULL, NULL),
(35, 'Ira Dei', 'Mägo de Oz', 'Ira Dei', 'Folk', 2019, 'assets/img/caratulas/musica/ira dei.jpg', NULL, NULL),
(36, 'Tranquilo Majete', 'Celtas Cortos', 'Tranquilo Majete', 'rock', 1993, 'assets/img/caratulas/musica/tranquilo majete.jpg', NULL, NULL),
(37, 'Nos Vemos en los Bares', 'Celtas Cortos', 'Nos Vemos en los Bares', 'rock', 1997, 'assets/img/caratulas/musica/nos vemos en los bares.jpg', NULL, NULL),
(38, '40 de Abril', 'Celtas Cortos', '40 de Abril', 'rock', 2008, 'assets/img/caratulas/musica/40 de abril.jpg', NULL, NULL),
(39, 'En estos días Inciertos', 'Celtas Cortos', 'En estos días Inciertos', 'rock', 1996, 'assets/img/caratulas/musica/en estos dias inciertos.jpg', NULL, NULL),
(40, 'El Alquimista Loco', 'Celtas Cortos', 'El Alquimista Loco', 'rock', 1998, 'assets/img/caratulas/musica/el alquimista loco.jpg', NULL, NULL),
(41, 'El Mal Querer', 'Rosalia', 'El Mal Querer', 'flamenco', 2018, 'assets/img/caratulas/musica/el mal querer.jpg', NULL, NULL),
(42, 'Los Ángeles', 'Rosalia', 'Los Ángeles', 'flamenco', 2019, 'assets/img/caratulas/musica/los angeles.jpg', NULL, NULL),
(43, 'Un Cuartito Pa Mis Cosas', 'El Arrebato', 'Un Cuartito Pa Mis Cosas', 'flamenco', 2006, 'assets/img/caratulas/musica/un cuartito pa mis cosas.jpg', NULL, NULL),
(44, 'Campamento Labandón', 'El Arrebato', 'Campamento Labandón', 'flamenco', 2012, 'assets/img/caratulas/musica/campamento labandon.jpg', NULL, NULL),
(45, 'Poquito a Poco', 'El Arrebato', 'Poquito a Poco', 'flamenco', 0, 'assets/img/caratulas/musica/poquito a poco.jpg', NULL, NULL),
(46, 'MusicaPrueba', 'dsa', 'testP', 'ninguna', 2024, 'assets/img/caratulas/musica/MusicaPrueba.png', 7, 1235),
(47, 'NuevoNombre', 'YoNuevo', 'testPNuevo', 'electronica', 2024, 'assets/img/caratulas/musica/sdfsd.png', 7, 122),
(48, 'Música premium', 'dsa', 'premium', 'ninguna', 2024, NULL, 12, 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicacomentario`
--

CREATE TABLE `musicacomentario` (
  `id` int(11) UNSIGNED NOT NULL,
  `comentario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `musica_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musicacomentario`
--

INSERT INTO `musicacomentario` (`id`, `comentario`, `usuario_id`, `musica_id`) VALUES
(1, 'Pero por mí primero', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicaestado`
--

CREATE TABLE `musicaestado` (
  `id` int(11) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `musica_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musicaestado`
--

INSERT INTO `musicaestado` (`id`, `estado`, `usuario_id`, `musica_id`) VALUES
(1, 'pendiente', 10, 1),
(2, 'seguir', 10, 3),
(3, 'terminada', 10, 5),
(4, 'seguir', 10, 12),
(5, 'terminada', 10, 15),
(6, 'abandonada', 10, 23),
(7, 'abandonada', 10, 29),
(8, 'seguir', 10, 26),
(9, 'terminada', 10, 31),
(10, 'terminada', 10, 33),
(11, 'pendiente', 10, 34),
(12, 'terminada', 10, 35),
(13, 'terminada', 10, 44),
(14, 'terminada', 10, 7),
(15, 'pendiente', 10, 2),
(16, 'terminada', 12, 13),
(17, 'terminada', 12, 10),
(18, 'abandonada', 12, 3),
(19, 'pendiente', 12, 1),
(20, 'terminada', 12, 2),
(21, 'seguir', 12, 30),
(22, 'pendiente', 12, 24),
(23, 'seguir', 12, 33),
(24, 'pendiente', 12, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicafavorito`
--

CREATE TABLE `musicafavorito` (
  `id` int(11) UNSIGNED NOT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `musica_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musicafavorito`
--

INSERT INTO `musicafavorito` (`id`, `usuario_id`, `musica_id`) VALUES
(1, 10, 1),
(2, 10, 3),
(3, 10, 35),
(4, 10, 44),
(5, 10, 7),
(6, 12, 13),
(7, 12, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musicavaloracion`
--

CREATE TABLE `musicavaloracion` (
  `id` int(11) UNSIGNED NOT NULL,
  `valor` int(11) UNSIGNED DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `musica_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `musicavaloracion`
--

INSERT INTO `musicavaloracion` (`id`, `valor`, `usuario_id`, `musica_id`) VALUES
(1, 5, 10, 1),
(2, 3, 10, 3),
(3, 3, 10, 5),
(4, 5, 10, 12),
(5, 4, 10, 15),
(6, 5, 10, 23),
(7, 2, 10, 29),
(8, 3, 10, 26),
(9, 5, 10, 31),
(10, 4, 10, 33),
(11, 5, 10, 34),
(12, 5, 10, 35),
(13, 4, 10, 44),
(14, 5, 10, 7),
(15, 5, 10, 2),
(16, 4, 12, 13),
(17, 5, 12, 10),
(18, 5, 12, 3),
(19, 5, 12, 1),
(20, 3, 12, 2),
(21, 5, 12, 30),
(22, 5, 12, 24),
(23, 5, 12, 33),
(24, 4, 12, 35),
(25, 5, 12, 37);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` int(11) UNSIGNED DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `ruta_caratula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `nombre`, `descripcion`, `genero`, `duracion`, `fecha`, `ruta_caratula`) VALUES
(1, 'Harry Potter y la Piedra Filosofal ', 'Harry Potter es un huérfano que vive con sus desagradables tíos, los Dursley, y su repelente primo Dudley. Se acerca su undécimo cumpleaños y tiene pocas esperanzas de recibir algún regalo, ya que nunca nadie se acuerda de él. Sin embargo, pocos días antes de su cumpleaños, una serie de misteriosas cartas dirigidas a él y escritas con una estridente tinta verde rompen la monotonía de su vida: Harry es un mago y sus padres también lo eran.', 'cienciaficcion', 159, '2001-11-30', 'assets/img/caratulas/peliculas/hp y la piedra filosofal.jpg'),
(2, 'Harry Potter y la Cámara Secreta', 'Harry regresa a su segundo año a Hogwarts, pero descubre que cosas malas ocurren debido a que un sitio llamado la Cámara de los Secretos ha sido abierto por el heredero de Slytherin y hará que los hijos de muggles, los impuros, aparezcan petrificados misteriosamente por un animal monstruoso.', 'cienciaficcion', 174, '2002-11-29', 'assets/img/caratulas/peliculas/hp y la camara secreta.jpg'),
(3, 'Harry Potter y el Prisionero de Azkaban', 'Harry está deseando que termine el verano para comenzar un nuevo curso en Hogwarts, y abandonar lo antes posible la casa de sus despreciables tíos, los Dursley. Lo que desconoce Harry es que va a tener que abandonar Privet Drive antes de tiempo e inesperadamente después de convertir a su tía Marge en un globo gigante. Un autobús noctámbulo, y encantado por supuesto, le llevará a la taberna El Caldero Chorreante, donde le espera nada menos que Cornelius Fudge, el Ministro de Magia.', 'cienciaficcion', 142, '2004-06-18', 'assets/img/caratulas/peliculas/hp y el prisionero de azkaban.jpg'),
(4, 'Harry Potter y el Caliz de Fuego', 'En el cuarto año en Hogwarts, Harry se enfrenta al mayor de los desafíos y peligros de la saga. Cuando es elegido bajo misteriosas circunstancias como el competidor que representará a Hogwarts en el Torneo Triwizard, Harry deberá competir contra los mejores jóvenes magos de toda Europa. Pero mientras se prepara, aparecen pruebas que manifiestan que Lord Voldemort ha regresado. Antes de darse cuenta, Harry no solo estará luchando por el campeonato sino también por su vida.', 'cienciaficcion', 157, '2005-11-25', 'assets/img/caratulas/peliculas/hp y el caliz de fuego.jpg'),
(5, 'Harry Potter y la Orden del Fenix', 'Harry Potter regresa por quinto año a Hogwarts aún sacudido por la tragedia ocurrida en el Torneo de los Tres Magos. Debido a que el Ministro de la Magia niega el regreso de Lord Voldemort, Harry se convierte en el centro de atención de la comunidad mágica. Mientras lucha con sus problemas en el colegio, incluyendo a la nueva profesora Dolores Umbridge, intentará aprender más sobre la misteriosa Orden del Fénix.', 'cienciaficcion', 142, '2007-06-28', 'assets/img/caratulas/peliculas/hp y la orden del fenix.jpg'),
(6, 'Harry Potter y el Misterio del Principe', 'En medio de los desastres que azotan a Inglaterra, Harry y sus compañeros vuelven a Hogwarts para cursar su sexto año de estudios; y aunque las medidas de seguridad han convertido al colegio en una fortaleza, algunos estudiantes son víctimas de ataques inexplicables. Harry sospecha que Draco Malfoy es el responsable de los mismos y decide averiguar la razón. Mientras tanto, Albus Dumbledore y el protagonista exploran el pasado de Lord Voldemort mediante recuerdos que el director ha recolectado. Con esto, Dumbledore planea preparar al muchacho para el día de la batalla final.', 'cienciaficcion', 154, '2009-07-15', 'assets/img/caratulas/peliculas/hp y el misterio del principe.jpg'),
(7, 'Harry Potter y las Reliquias de la Muerte - Parte 1', 'Primera parte de la adaptación al cine del último libro de la saga Harry Potter, \"Harry Potter y las Reliquias de la Muerte\". La historia continúa desde el punto en el que terminó \"El príncipe mestizo\": Una tarea casi imposible cae sobre los hombros de Harry: deberá encontrar y destruir los horrocruxes restantes para dar fin al reinado de Lord Voldemort. En el episodio final de la saga, el hechicero de 17 años parte junto con sus amigos Hermione Granger y Ron Weasley en un peligroso viaje por Inglaterra para encontrar los objetos que contienen los fragmentos del alma del Señor Tenebroso, los cuales garantizan su longevidad. Pero el camino no será fácil pues el lado oscuro adquiere más poder con cada minuto que pasa y las lealtades serán puestas a prueba. Harry deberá usar todos los conocimientos que gracias a Dumbledore ha adquirido sobre su enemigo para poder encontrar la forma de sobrevivir a esta última aventuras.', 'cienciaficcion', 146, '2010-11-19', 'assets/img/caratulas/peliculas/hp y las reliquias de la muerte p1.jpg'),
(8, 'Harry Potter y las Reliquias de la Muerte - Parte 2', 'La segunda parte de la batalla final entre las fuerzas del bien y el mal. El juego nunca ha sido tan peligroso y nadie está a salvo. Se acerca el momento de la confrontación final entre Harry Potter y Lord Voldemort. Todo termina aquí…', 'cienciaficcion', 130, '2011-07-07', 'assets/img/caratulas/peliculas/hp y las reliquias de la muerte p2.jpg'),
(9, 'Los Juegos del Hambre', 'Lo que en el pasado fueron los Estados Unidos, ahora es una nación llamada Panem: un fastuoso Capitolio ejerce un control riguroso sobre los doce distritos que lo rodean y que están aislados entre sí. Cada distrito se ve obligado a enviar anualmente un chico y una chica entre los doce y los dieciocho años para que participen en los Hunger Games, que son transmitidos en directo por la televisión. Se trata de una lucha a muerte, en la que sólo puede haber un superviviente. Katniss Everdeen, una joven de dieciséis años, decide sustituir a su hermana en los juegos; pero para ella, que ya ha visto la muerte de cerca, la lucha por la supervivencia es su segunda naturaleza.', 'aventuras', 120, '2012-04-20', 'assets/img/caratulas/peliculas/lgdh.jpg'),
(10, 'Los Juegos del Hambre - En LLamas', 'Katniss Everdeen vuelve a casa sana y salva después de ganar los 74º Juegos del Hambre anuales junto a su compañero Peeta Mellark. Participar significa dejar atrás familia y amigos y hacer ambos el Tour de la Victoria por los diferentes distritos. A lo largo del camino, Katniss se da cuenta de que se está gestando una rebelión, pero en el Capitolio todo sigue bajo control: el Presidente Snow organiza los 75º Juegos del Hambre, El Vasallaje, una competición especial con una inesperada novedad que cambiará Panem para siempre.', 'aventuras', 120, '2013-11-22', 'assets/img/caratulas/peliculas/lghd en llamas.jpg'),
(11, 'Los Juegos del Hambre - Sinajo P1', 'Katniss Everdeen se encuentra en el Distrito 13 después de destrozar los Juegos para siempre. Bajo el liderazgo de la comandante Coin y el consejo de sus amigos más leales, Katniss extiende sus alas mientras lucha por salvar a Peeta Mellark y a una nación alentada por su valentía... Tercera y última entrega de la saga literaria \"Los juegos del hambre\" de Suzanne Collins, que se divide en dos películas.', 'aventuras', 120, '2014-11-20', 'assets/img/caratulas/peliculas/lgdh sinsajo p1.jpg'),
(12, 'Los Juegos del Hambre - Sinajo P2', '\"Los juegos del hambre: Sinsajo. Parte 2\" nos trae la impactante conclusión de la franquicia, en la que Katniss Everdeen (Jennifer Lawrence) se da cuenta de que ya no sólo está en juego su supervivencia, sino también el futuro. Con Panem sumida en una guerra a gran escala, Katniss tendrá que plantar cara al presidente Snow (Donald Sutherland) en el enfrentamiento final. Katniss, acompañada por un grupo de sus mejores amigos, que incluye a Gale (Liam Hemsworth), Finnick (Sam Claflin) y Peeta (Josh Hutcherson), emprende una misión con la unidad del Distrito 13, en la que arriesgan sus vidas para liberar a los ciudadanos de Panem y orquestan un intento de asesinato del presidente Snow, cada vez más obsesionado con destruirla. Las trampas mortales, los enemigos y las decisiones morales que aguardan a Katniss la pondrán en mayores aprietos que ninguna arena de Los Juegos del Hambre.', 'aventuras', 120, '2015-11-20', 'assets/img/caratulas/peliculas/lgdh sinsajo p2.jpg'),
(13, 'El Señor de los Anillos - La Comunidad del Anillo', 'En la Tierra Media, el Señor Oscuro Saurón creó los Grandes Anillos de Poder, forjados por los herreros Elfos. Tres para los reyes Elfos, siete para los Señores Enanos, y nueve para los Hombres Mortales. Secretamente, Saurón también forjó un anillo maestro, el Anillo Único, que contiene en sí el poder para esclavizar a toda la Tierra Media. Con la ayuda de un grupo de amigos y de valientes aliados, Frodo emprende un peligroso viaje con la misión de destruir el Anillo Único. Pero el Señor Oscuro Sauron, quien creara el Anillo, envía a sus servidores para perseguir al grupo. Si Sauron lograra recuperar el Anillo, sería el final de la Tierra Media.', 'fantasia', 228, '2001-12-19', 'assets/img/caratulas/peliculas/esdla la comunidad del anillo.jpg'),
(14, 'El Señor de los Anillos - Las Dos Torres', 'La Compañía del Anillo se ha disuelto. El portador del anillo Frodo y su fiel amigo Sam se dirigen hacia Mordor para destruir el Anillo Único y acabar con el poder de Sauron. Mientras, y tras la dura batalla contra los orcos donde cayó Boromir, el hombre Aragorn, el elfo Legolas y el enano Gimli intentan rescatar a los medianos Merry y Pipin, secuestrados por los ogros de Mordor. Por su parte, Saurón y el traidor Sarumán continúan con sus planes en Mordor, en espera de la guerra contra las razas libres de la Tierra Media.', 'fantasia', 235, '2002-12-18', 'assets/img/caratulas/peliculas/esdla las dos torres.jpg'),
(15, 'El Señor de los Anillos - El Retorno del Rey', 'Las fuerzas de Saruman han sido destruidas, y su fortaleza sitiada. Ha llegado el momento de que se decida el destino de la Tierra Media, y por primera vez en mucho tiempo, parece que hay una pequeña esperanza. La atención del señor oscuro Sauron se centra ahora en Gondor, el último reducto de los hombres, y del cual Aragorn tendrá que reclamar el trono para ocupar su puesto de Rey. Pero las fuerzas de Sauron ya se preparan para lanzar el último y definitivo ataque contra el reino de Gondor, la batalla que decidirá el destino de todos. Mientras tanto, Frodo y Sam continuan su camino hacia Mordor, a la espera de que Sauron no repare en que dos pequeños Hobbits se acercan cada día más al final de su camino, el Monte del Destino.', 'fantasia', 250, '2003-12-17', 'assets/img/caratulas/peliculas/esdla el retorno del rey.jpg'),
(16, 'El Hobbit - Un Viaje Inesperado', 'Precuela de la trilogía \"El Señor de los Anillos\", obra de J.R.R. Tolkien. En compañía del mago Gandalf y de trece enanos, el hobbit Bilbo Bolsón emprende un viaje a través del país de los elfos y los bosques de los trolls, desde las mazmorras de los orcos hasta la Montaña Solitaria, donde el dragón Smaug esconde el tesoro de los Enanos. Finalmente, en las profundidades de la Tierra, encuentra el Anillo Único, hipnótico objeto que será posteriormente causa de tantas sangrientas batallas en la Tierra Media.', 'fantasia', 182, '2012-12-12', 'assets/img/caratulas/peliculas/el hobbit un viaje inesperado.jpg'),
(17, 'El Hobbit - La Desolación de Smaug', 'Tras sobrevivir al inicio de su inesperado viaje, la Compañía sigue hacia el este y se encuentra por el camino con Beorn, el cambiador de piel, y con un enjambre de Arañas gigantes en el peligroso monte Mirkwood. Tras evitar que los Elfos del Bosque los capturen, los Enanos prosiguen su viaje hacia Ciudad del Lago, y finalmente llegan a la Montaña Solitaria, donde tienen que enfrentarse al mayor de los peligros, una criatura más terrorífica que cualquier otra que pondrá a prueba no solo lo profundo de su valentía sino también los límites de su amistad y la sabiduría del viaje: el dragón Smaug.', 'fantasia', 187, '2013-12-13', 'assets/img/caratulas/peliculas/el hobbit la desolacion de smaug.jpg'),
(18, 'El Hobbit - La Batalla de los Cinco Ejercitos', 'Después de haber recuperado el reino del Dragón Smaug, la Compañía ha desencadenado, sin querer, una potencia maligna. Un Smaug enfurecido vuela hacia la Ciudad del Lago para acabar con cualquier resto de vida. Obsesionado sobre todo con el reino recuperado, Thorin sacrifica la amistad y el honor para mantenerlo mientras que Bilbo intenta frenéticamente hacerle ver la razón por la que el hobbit toma una decisión desesperada y peligrosa. Pero hay aún mayores peligros por delante. Sin la ayuda aparente del mago Gandalf, su gran enemigo Sauron ha enviado legiones de orcos hacia la Montaña Solitaria en un ataque furtivo. Cuando la oscuridad se cierna sobre ellos, las razas de los Enanos, Elfos y Hombres deben decidir si unirse o ser destruidos. Bilbo se encontrará así en la batalla épica de los Cinco Ejércitos, donde el futuro de la Tierra Media está en juego.', 'fantasia', 164, '2014-12-16', 'assets/img/caratulas/peliculas/el hobbit la batalla de los cinco ejercitos.jpg'),
(19, 'REC 1', 'Cada noche, Ángela (Manuela Velasco), una joven reportera de una televisión local, sigue con su cámara a un grupo profesional distinto. Esta noche le toca entrevistar a los bomberos y tiene la secreta esperanza de poder asistir en directo a un impactante incendio. Pero la noche transcurre tranquilamente. Y cuando, por fin, reciben la llamada de una anciana que se ha quedado encerrada en su casa, no le queda otro remedio que seguirlos durante la misión de rescate. En el edificio donde vive la anciana, los vecinos están muy asustados. La mujer, encerrada en su piso, lanza unos gritos desgarradores... Los bomberos derriban la puerta y, seguidos por Ángela y el cámara, encuentran a la anciana semiinconsciente, rodeada por decenas de gatos. De pronto, la mujer se lanza sobre un bombero y le muerde salvajemente. Es sólo el comienzo de una larga pesadilla y de un dramático reportaje único.', 'suspense', 78, '2007-11-23', 'assets/img/caratulas/peliculas/rec 1.jpg'),
(20, 'REC 2', 'Secuela de la película [•REC] (2006), con el mismo formato de falso documental. Quince minutos desde el final de la primera parte, un grupo de policías entran en el edificio acompañados por un doctor con tal de conseguir la sangre de los infectados, en especial la de la infectada inicial que habitaba el ático, para encontrar una cura. A su vez, tres adolescentes, un bombero y un antiguo inquilino entran por el alcantarillado. Lo que ninguno sabe es que van a pasar el peor momento de su vida en cuanto se crucen con los infectados.', 'suspense', 85, '2009-10-02', 'assets/img/caratulas/peliculas/rec 2.jpg'),
(21, 'REC 3', 'Koldo y Clara están hechos el uno para el otro. Van a celebrar su enlace acompañados de sus seres queridos. Pero una negra sombra se cierne sobre ellos. En el día más feliz de sus vidas, el infierno va a desatarse.', 'suspense', 85, '2012-03-28', 'assets/img/caratulas/peliculas/rec 3.jpg'),
(22, 'Expendiente Warren - El Caso Enfield', 'Secuela de la exitosa \"Expediente Warren\" (2013), que lleva de nuevo a la pantalla otro caso real de los expedientes de los renombrados demonólogos Ed y Lorraine Warren. En este caso ambos viajarán al norte de Londres para ayudar a una madre soltera que tiene a su cargo cuatro hijos y que vive sola con ellos en una casa plagada de espíritus malignos.', 'suspense', 134, '2016-06-17', 'assets/img/caratulas/peliculas/expediente warren el caso enfield.jpg'),
(23, 'Expendiente Warren - The Conjuring', 'Basada en una historia real documentada por los reputados demonólogos Ed y Lorraine Warren. Narra los encuentros sobrenaturales que vivió la familia Perron en su casa de Rhode Island a principios de los 70. El matrimonio Warren, investigadores de renombre en el mundo de los fenómenos paranormales, acudieron a la llamada de esta familia aterrorizada por la presencia en su granja de un ser maligno.', 'suspense', 92, '2013-07-19', 'assets/img/caratulas/peliculas/expediente warren the conjuring.jpg'),
(24, 'Titanic', 'Durante las labores de recuperación de los restos del famoso trasatlántico Titanic, una anciana norteamericana se pone en contacto con la expedición para acudir a una plataforma flotante instalada en el Mar del Norte y asistir in situ a la recuperación de sus recuerdos. A través de su memoria reviviremos los acontecimientos que marcaron el siniestro más famoso del siglo XX: el hundimiento del trasatlántico más lujoso del mundo, la máquina más sofisticada de su tiempo, considerada «insumergible», que sucumbió a las heladas aguas del Atlántico en abril de 1912, llevándose consigo la vida de 1.500 personas, más de la mitad del pasaje. En los recueros de la anciana hay cabida para algo más que la tragedia, la historia de amor que vivió con un joven pasajero de tercera clase, un pintor aficionado que había ganado su pasaje al ganar a las cartas en una taberna de Southampton.', 'romantica', 195, '1998-01-08', 'assets/img/caratulas/peliculas/titanic.jpg'),
(25, 'Blancanieves', 'La malvada madrastra de Blancanieves decide deshacerse de ella porque no puede soportar que la belleza de la joven sea superior a la suya. Sin embargo, Blancanieves consigue salvarse y se refugia en la cabaña de los siete enanitos. A pesar de todo, su cruel madrastra consigue encontrarla y la envenena con una manzana. Pero la princesa no está muerta, sólo dormida, a la espera de que un príncipe azul la rescate.', 'animacion', 88, '1937-12-21', 'assets/img/caratulas/peliculas/blancanieves.jpg'),
(26, 'El Libro de la Selva', 'Tras la muerte de sus padres, Mowgli, un niño de apenas dos años, queda abandonado en la selva y es recogido por una manada de lobos. En el seno de la manada, Mowgli es criado como un lobo más hasta que crece y empieza a desenvolverse por sí mismo en la selva.', 'animacion', 89, '1968-12-16', 'assets/img/caratulas/peliculas/el libro de la selva.jpg'),
(27, 'El Libro de la Selva 2', 'Mowgli vive ahora en la aldea con los hombres, pero echa de menos a su querido compañero Baloo, que también extraña a su pequeño amigo. Pero Baloo no es el único que desea ver de nuevo a Mowgli... el malvado tigre Shre Khan también aguarda impaciente su venganza. Un día Baloo decide hacerle una visita a Mowgli. Atrapado por la alegría que supone ver de nuevo al viejo Baloo, Mowgli regresa a la selva . Pero cuando el niño se adentra en la jungla, la persecución será a ver quién da con él primero: su viejo amigo Baloo, su nueva familia o el tigre.', 'animacion', 78, '2003-02-05', 'assets/img/caratulas/peliculas/el libro de la selva 2.jpg'),
(28, 'El Rey León', 'La sabana africana es el escenario en el que tienen lugar las aventurass de Simba, un pequeño león que es el heredero del trono. Sin embargo, se ve forzado a exiliarse al ser injustamente acusado de la muerte de su padre. Durante su destierro, hará buenas amistades y, finalmente, regresará para recuperar lo que legítimamente le corresponde.', 'animacion', 89, '1994-11-08', 'assets/img/caratulas/peliculas/el rey leon.jpg'),
(29, 'El Rey León 2 - El Orgullo de Simba', 'Kiara, la hija primogénita de Simba y heredera de los dominios del clan, va en busca de aventurass por el Serengeti. Escapando de sus cuidadores, Timón y Pumba, Kiara se adentra en las tierras oscuras, que se sitúan fuera de los límites establecidos para ella. Allí conoce a Kovu, un joven cachorro elegido para seguir las huellas de Scar. Alcanzar la paz entre los habitantes de las tierras oscuras y los del territorio de Simba depende de Kiara y Kovu. Pero... ¿llegará a encontrar el amor una manera de unir dos mundos tan diferentes?', 'animacion', 82, '1998-10-26', 'assets/img/caratulas/peliculas/el rey leon 2.jpg'),
(30, 'El Rey León 3 - Hakuna Matata', 'La diversión reina en esta nueva película en al que Timón y su simpático amigo Pumba son los grandes héroes de la Sabana. El Rey León 3 nos traslada al pasado, antes de que comenzase la historia de Simba, e incluso mucho más atrás. En esta nueva comedia de aventurass, Timón y Pumba te descubrirán sus orígenes, cuándo se conocieron y cómo ayudaron a Simba a salvar el Seregeti. Su historia incluye algunos de los grandes momentos de El Rey León, que ahora resultarán un poco diferentes desde su punto de vista. Por ejemplo, os sorprenderá conocer la verdad sobre cómo se desarrolló el trascendental momento en el que Simba fue presentado al reino animal.', 'animacion', 77, '2004-02-09', 'assets/img/caratulas/peliculas/el rey leon 3.jpg'),
(31, 'Tarzán', 'Cuando Kala, una gorila hembra, encuentra un niño huérfano en la jungla, decide adoptarlo como su propio hijo a pesar de la oposición de Kerchak, el jefe de la manada. Junto a Terk, un gracioso mono y Tantor, un elefante algo neurótico, Tazán crecerá en la jungla desarrollando los instintos de los animales y aprendiendo a deslizarse entre los árboles a velocidad de vértigo. Pero cuando una expedición se adentra en la jungla y Tarzán conoce a Jane, descubrirá quién es realmente y cuál es el mundo al que pertenece...', 'animacion', 88, '1999-11-26', 'assets/img/caratulas/peliculas/tarzan.jpg'),
(32, 'Tarzán 2 - El Origen de la Leyenda', 'Antes de ser el Rey de la Selva, Tarzán era un niño inquieto que intentaba encontrar su papel en el mundo. Cuando una de sus travesuras pone a su familia en peligro, Tarzán decide que ellos estarán mejor sin él. Así se embarca en un emocionante viaje que le llevará a encontrarse cara a cara con el misterioso Zugor, la fuerza más poderosa del planeta. Juntos, Tarzán y Zugor descubren que ser diferentes no es una debilidad y que los amigos y la familia son el mayor apoyo de todos.', 'animacion', 74, '2005-06-14', 'assets/img/caratulas/peliculas/tarzan 2.jpg'),
(33, 'La Monja', 'Cuando una joven monja se suicida en una abadía de clausura en Rumanía, un sacerdote experto en posesiones demoniacas y una novicia a punto de tomar sus votos, son enviados por el Vaticano para investigar. Juntos descubren el profano secreto de la orden. Arriesgando no solo sus propias vidas sino su fe y hasta sus almas, se enfrentan a una fuerza maléfica en forma de monja demoníaca, en una abadía que se convierte en un campo de batalla de horror entre los vivos y los condenados.... Spin-off de la película de terror de 2016 \"The Conjuring 2\". Producida por Atomic Monster, productora del director especializado en el género de terror, James Wan.', 'suspense', 96, '2018-09-07', 'assets/img/caratulas/peliculas/la monja.jpg'),
(34, 'La Llorona', 'La Llorona es una aparición tenebrosa, atrapada entre el Cielo y el Infierno, con un destino terrible sellado por su propia mano. La mera mención de su nombre ha causado terror en todo el mundo durante generaciones. En vida, ahogó a sus hijos en una rabia de celos, arrojándose en el río tras ver como mató a sus hijos violentamente. Ahora sus lágrimas son eternas, letales, y aquellos que escuchan su llamada de muerte en la noche están condenados. Se arrastra en las sombras y ataca a los niños, desesperada por reemplazar a los suyos. A medida que los siglos han pasado, su deseo se ha vuelto más voraz y sus métodos más terroríficos.', 'terror', 93, '2019-04-18', 'assets/img/caratulas/peliculas/la llorona.jpg'),
(35, 'Capitán America - El Primer Vengador', 'Nacido durante la Gran Depresión, Steve Rogers creció como un chico enclenque en una familia pobre. Horrorizado por las noticias que llegaban de Europa sobre los nazis, decidió enrolarse en el ejército; sin embargo, debido a su precaria salud, fue rechazado una y otra vez. Enternecido por sus súplicas, el General Chester Phillips le ofrece la oportunidad de tomar parte en un experimento especial. la \"Operación Renacimiento\". Después de administrarle el “Suero Super-Soldado” y bombardearlo con “vita-rayos”, el cuerpo de Steve se hace perfecto. Posteriormente, es sometido a un intensivo programa de entrenamiento físico y táctico. Tres meses después, recibe su primera misión como Capitán América. Armado con un escudo indestructible y su inteligencia para la batalla, el Capitán América emprende la guerra contra el mal, como centinela de la libertad y como líder de los Vengadores.', 'superheroes', 124, '2011-08-05', 'assets/img/caratulas/peliculas/capitan america el primer vengador.jpg'),
(36, 'Capitana Marvel', 'La historia sigue a Carol Danvers mientras se convierte en uno de los héroes más poderosos del universo, cuando la Tierra se encuentra atrapada en medio de una guerra galáctica entre dos razas alienígenas. Situada en los años 90, \"Capitana Marvel\" es una historia nueva de un período de tiempo nunca antes visto en la historia del Universo Cinematográfico de Marvel.', 'superheroes', 125, '2019-03-08', 'assets/img/caratulas/peliculas/capitana marvel.jpg'),
(37, 'Iron Man', 'El multimillonario fabricante de armas Tony Stark (Robert Downey Jr.) debe enfrentarse a su turbio pasado después de sufrir un accidente con una de sus armas. Equipado con una armadura de última generación tecnológica, se convierte en \"El hombre de hierro\", un héroe que se dedica a combatir el mal en todo el mundo.', 'superheroes', 126, '2008-04-30', 'assets/img/caratulas/peliculas/iron man.jpg'),
(38, 'El Increible Hulk', 'El científico Bruce Banner recorre el mundo tratando de encontrar una cura a su problema, en busca de un antídoto que le permita librarse de su Alter Ego. Perseguido por el ejército y por su propia rabia interna, es incapaz de sacar de su cabeza a Betty Ross. Así que se decide a volver a la civilización, donde debe enfrentarse a una criatura creada cuando el agente de la KGB, Emil Blonsky, se expone a una dosis superior de la radiación que convirtió a Bruce en Hulk. Incapaz de volver a su estado humano, Emil hace responsable a Hulk de su aterradora condición, mientras que la ciudad de Nueva York se convierte en el escenario de la última batalla entre las dos criaturas más poderosas que jamás han pisado la Tierra.', 'superheroes', 135, '2008-06-20', 'assets/img/caratulas/peliculas/el increible hulk.jpg'),
(39, 'Iron Man 2', 'El mundo ya sabe que el multimillonario Tony Stark (Robert Downey Jr.) es Iron Man, el superhéroe enmascarado. A pesar de las presiones del gobierno, la prensa y la opinión pública para que comparta su tecnología con el ejército, Tony es reacio a desvelar los secretos de la armadura de Iron Man, porque teme que esa información caiga en en manos de irresponsables. Con Pepper Potts (Gwyneth Paltrow) y James “Rhodey” Rhodes (Don Cheadle) a su lado, Tony forja alianzas nuevas y se enfrenta a nuevas y poderosas fuerzas.', 'superheroes', 124, '2010-04-30', 'assets/img/caratulas/peliculas/iron man 2.jpg'),
(40, 'Thor', 'Thor es un arrogante y codicioso guerrero cuya imprudencia desata una antigua guerra. Por ese motivo, su padre Odín lo castiga desterrándolo a la Tierra para que viva entre los hombres y descubra así el verdadero sentido de la humildad. Cuando el villano más peligroso de su mundo envía a la Tierra a las fuerzas más oscuras de Asgard, Thor se dará cuenta de lo que realmente hace falta para ser un verdadero héroe.', 'superheroes', 115, '2011-04-29', 'assets/img/caratulas/peliculas/thor.jpg'),
(41, 'Los Vengadores', 'Cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial, Nick Fury, director de la Agencia SHIELD, decide reclutar a un equipo para salvar al mundo de un desastre casi seguro. Adaptación del cómic de Marvel \"Los Vengadores\", el legendario grupo de superhéroes formado por Ironman, Hulk, Thor y el Capitán América entre otros.', 'superheroes', 143, '2012-04-27', 'assets/img/caratulas/peliculas/vengadores.jpg'),
(42, 'Iron Man 3', 'En esta ocasión el imponente superhéroe Iron Man intentará mejorar su armadura mediante una nueva tecnología y, entre otros personajes, estará acompañado de su gran amiga Pepper Potts (Gwyneth Paltrow), su aliado de armas James Rhodes y su guardaespaldas Happy Hogan. Esta nueva entrega de la historia se inspira en la colección de comics titulada \"Extremis\", escrita por Warren Ellis y dibujada por Adi Granov que fue publicada entre el año 2005 y el año 2006. En esta parte, el argumento se desarrolla en un mundo más realista y menos fantasioso que el de las anteriores, donde los acontecimientos sucedidos en \"Marvel: Los Vengadores\" tienen constancia pero no resultan ser el eje central de la película. De esta forma, el tercer capítulo de la saga Iron Man revolucionará el estilo de las anteriores conservando su esencia, pero con originales innovaciones que sorprenderán a todos los fans de la serie.', 'superheroes', 131, '2013-04-26', 'assets/img/caratulas/peliculas/iron man 3.jpg'),
(43, 'Thor - El Mundo Oscuro', 'Thor lucha por restablecer el orden en el cosmos, pero una antigua raza liderada por el vengativo Malekith regresa con el propósito de volver a sumir el universo en la oscuridad. Se trata de un villano con el que ni siquiera Odín y Asgard se atreven a enfrentarse; por esa razón, Thor tendrá que emprender un viaje muy peligroso, durante el cual se reunirá con Jane Foster y la obligará a sacrificarlo todo para salvar el mundo.', 'superheroes', 118, '2013-10-22', 'assets/img/caratulas/peliculas/thor el mundo oscuro.jpg'),
(44, 'Capitán America - El Soldado de Invierno', 'Mientras que Capitán America: El primer vengador nos sumergía en los primeros años del universo Marvel a través de la traslación del legendario cómic a la gran pantalla, ahora el héroe regresa con Capitán América: El soldado del invierno. Esta historia se desarrollo en la actualidad y tiene como protagonistas a Chris Evans, Samuel L. Jackson y Scarlett Johansson, entre otros. La trama de la historia sigue girando alrededor de Steve Rogers, que mantiene su alianza con Nick Furia y con la agencia secreta SHIELD, e intenta, además involucrarse en el mundo moderno.', 'superheroes', 136, '2014-03-28', 'assets/img/caratulas/peliculas/capitan america el soldado de invierno.jpg'),
(45, 'Guardianes de la Galaxia', 'El temerario aventurero Peter Quill es objeto de un implacable cazarrecompensas después de robar una misteriosa esfera codiciada por Ronan, un poderoso villano cuya ambición amenaza todo el universo. Para poder escapar del incansable Ronan, Quill se ve obligado a pactar una complicada tregua con un cuarteto de disparatados inadaptados: Rocket, un mapache armado con un rifle, Groot, un humanoide con forma de árbol, la letal y enigmática Gamora y el vengativo Drax the Destroyer. Pero cuando Quill descubre el verdadero poder de la esfera, deberá hacer todo lo posible para derrotar a sus extravagantes rivales en un intento desesperado de salvar el destino de la galaxia.', 'superheroes', 125, '2014-08-14', 'assets/img/caratulas/peliculas/guardianes de la galaxia.jpg'),
(46, 'Guardianes de la Galaxia - Vol 2', 'Continúan las aventurass del equipo en su travesía por los confines del cosmos. Los Guardianes deberán luchar para mantener unida a su nueva familia mientras intentan resolver el misterio de los verdaderos orígenes de Peter Quill. Viejos rivales se convertirán en nuevos aliados, y queridos personajes de los cómics clásicos acudirán en ayuda de nuestros héroes a medida que el Universo Cinematográfico de Marvel continúa expandiéndose.', 'superheroes', 138, '2017-04-19', 'assets/img/caratulas/peliculas/guardianes de la galaxia vol 2.jpg'),
(47, 'Vengadores - La Era de Ultrón', 'Cuando Tony Stark intenta reactivar un programa caído en desuso cuyo objetivo es mantener la paz, las cosas empiezan a torcerse y los héroes más poderosos de la Tierra, incluyendo a Iron Man, Capitán América, Thor, El Increíble Hulk, Viuda Negra y Ojo de Halcón, tendrán que afrontar la prueba definitiva cuando el destino del planeta se ponga en juego. Cuando el villano Ultron emerge, le corresponderá a Los Vengadores detener sus terribles planes, que junto a incómodas alianzas llevarán a una inesperada accion que allanará el camino para una épica y única aventuras.', 'superheroes', 144, '2015-04-29', 'assets/img/caratulas/peliculas/vengadores la era de ultron.jpg'),
(48, 'Ant Man', 'Armado con la asombrosa capacidad de reducir su tamaño a la dimensiones de un insecto, el estafador Scott Lang (Paul Rudd) debe sacar a relucir al héroe que lleva dentro y ayudar a su mentor, el doctor Hank Pym (Michael Douglas), a proteger de una nueva generación de amenazas el secreto que se esconde tras el traje de Ant-Man, con un casco que le permite comunicarse con las hormigas. A pesar de los obstáculos aparentemente insuperables que les acechan, Pym y Lang deben planear y llevar a cabo un atraco para intentar salvar al mundo.', 'superheroes', 118, '2015-07-24', 'assets/img/caratulas/peliculas/ant man.jpg'),
(49, 'Capitán America - Civil War', '\"Captain America: Civil War” continúa la historia de “Avengers: Age of Ultron”, con Steve Rogers liderando un nuevo equipo de Vengadores en su esfuerzo por proteger a la humanidad. Tras otro incidente internacional relacionado con los Vengadores que ocasiona daños colaterales, la presión política fuerza a crear un sistema de registro y un cuerpo gubernamental para determinar cuándo se requiere los servicios del equipo. El nuevo status quo divide a los Vengadores mientras intentan salvar al mundo de un nuevo y perverso villano.\"', 'superheroes', 148, '2016-04-29', 'assets/img/caratulas/peliculas/capitan america civil war.jpg'),
(50, 'Black Panther', '\'Black Panther\' cuenta la historia de T\'Challa quien, después de los acontecimientos de \'Capitán América: Civil War\', vuelve a casa, a la nación de Wakanda, aislada y muy avanzada tecnológicamente, para ser proclamado Rey. Pero la reaparición de un viejo enemigo pone a prueba el temple de T\'Challa como Rey y Black Panther ya que se ve arrastrado a un conflicto que pone en peligro todo el destino de Wakanda y del mundo.', 'superheroes', 135, '2018-01-29', 'assets/img/caratulas/peliculas/black panther.jpg'),
(51, 'Spiderman - Homecoming', 'Peter Parker comienza a experimentar su recién descubierta identidad como el superhéroe Spider-Man. Después de la experiencia vivida con los Vengadores, Peter regresa a casa, donde vive con su tía. Bajo la atenta mirada de su mentor Tony Stark, Peter intenta mantener una vida normal como cualquier joven de su edad, pero interrumpe en su rutina diaria el nuevo villano Vulture y, con él, lo más importante de la vida de Peter comenzará a verse amenazado.', 'superheroes', 133, '2017-07-28', 'assets/img/caratulas/peliculas/spiderman homecoming.jpg'),
(52, 'Ant Man y la Avispa', 'Mientras Scott Lang se convierte en un súper héroe y en un padre, Hope van Dyne y el Dr. Hank Pym presentan una nueva misión urgente que encuentra a Ant-Man luchando junto a The Wasp para descubrir secretos de su pasado.', 'superheroes', 125, '2018-07-04', 'assets/img/caratulas/peliculas/ant man y la avispa.jpg'),
(53, 'Doctor Strange', 'La vida del Dr. Stephen Strange cambia para siempre tras un accidente automovilístico que le deja muy malheridas sus manos. Cuando la medicina tradicional falla, se ve obligado a buscar esperanza y una cura en un lugar impensable: una comunidad aislada en Nepal llamada Kamar-Taj. Rápidamente descubre que éste no es sólo un centro de recuperación, sino también la primera línea de una batalla en contra de fuerzas oscuras y ocultas empeñadas en destruir nuestra realidad. En poco tiempo, Strange, armado con sus poderes mágicos recientemente adquiridos, se ve obligado a elegir entre volver a su antigua vida de riqueza y prestigio o dejarlo todo, para defender el mundo como el mago más poderoso del planeta.', 'superheroes', 115, '2016-10-28', 'assets/img/caratulas/peliculas/doctor strange.jpg'),
(54, 'Thor - Ragnarok', 'Thor está preso al otro lado del universo sin su poderoso martillo y se enfrenta a una carrera contra el tiempo. Su objetivo es volver a Asgard y parar el Ragnarok porque significaría la destrucción de su planeta natal y el fin de la civilización Asgardiana a manos de una todopoderosa y nueva amenaza, la implacable Hela. Pero, primero deberá sobrevivir a una competición letal de gladiadores que lo enfrentará a su aliado y compañero en los Vengadores, ¡el Increíble Hulk!', 'superheroes', 130, '2017-10-27', 'assets/img/caratulas/peliculas/thor ragnarok.jpg'),
(55, 'Vengadores - Infinity War', 'El todopoderoso Thanos ha despertado con la promesa de arrasar con todo a su paso, portando el Guantelete del Infinito, que le confiere un poder incalculable. Los únicos capaces de pararle los pies son los Vengadores y el resto de superhéroes de la galaxia, que deberán estar dispuestos a sacrificarlo todo por un bien mayor. Capitán América e Ironman deberán limar sus diferencias, Black Panther apoyará con sus tropas desde Wakanda, Thor y los Guardianes de la Galaxia e incluso Spider-Man se unirán antes de que los planes de devastación y ruina pongan fin al universo. ¿Serán capaces de frenar el avance del titán del caos?', 'superheroes', 160, '2018-04-27', 'assets/img/caratulas/peliculas/vengadores infinity war.jpg'),
(56, 'Vengadores - End Game', 'Después de los eventos devastadores de \"Vengadores: Infinity War\", el universo está en ruinas debido a las acciones de Thanos. Con la ayuda de los aliados que quedaron, los Vengadores deberán reunirse una vez más para intentar deshacer sus acciones y restaurar el orden en el universo de una vez por todas, sin importar cuáles sean las consecuencias... Cuarta y última entrega de la saga \"Vengadores\".', 'superheroes', 182, '2019-04-25', 'assets/img/caratulas/peliculas/vengadores endgame.jpg'),
(57, 'SAW 1', 'Un hombre llamado Adam se despierta encadenado a un tubo oxidado dentro de una decrépita cámara subterránea. A su lado, se encuentra otra persona encadenada, el Dr. Lawrence Gordon. Entre ellos hay un hombre muerto con un revolver calibre 38 en su mano. Ninguno de los dos sabe por qué están allí, sólo poseen un casette con instrucciones que dice que el Dr. Gordon debe matar a Adam en ocho horas. Si falla, ambos morirán, junto a la esposa del Dr. y su hija. Recordando una investigación de asesinato llevada a cabo por un detective llamado Tapp, el Dr. Gordon descubre que él y Adam están siendo victimas de un psicópata conocido como Jigsaw. Sólo les quedan unas horas para desenredar el complicado rompecabezas en el que están inmersos. El asesino les ha dejado únicamente unas pistas y dos sierras de mano, demasiados débiles para cortar la cadena que los ata, pero suficientemente fuertes para cortar carne y huesos...', 'terror', 103, '2005-03-18', 'assets/img/caratulas/peliculas/saw 1.jpg'),
(58, 'SAW 2', '\"Decide rápido... o muere despacio\". Cuando aparece una nueva víctima de asesinato con los signos característicos de Jigsaw, el Agente Eric Matthews (Donnie Wahlberg) se embarca en una investigación exhaustiva que le permite detener al asesino sin demasiado esfuerzo. Sin embargo, para Jigsaw ser detenido no es sino otra parte de su retorcido plan. Hay otras ocho víctimas jugándose la vida y ahora le toca a Matthews unirse al juego...', 'terror', 93, '2005-12-02', 'assets/img/caratulas/peliculas/saw 2.jpg'),
(59, 'SAW 3', 'Nuevas y macabras aventurass del siniestro Jigsaw, el hombre que mueve los hilos de los espantosos juegos que han aterrorizado a la comunidad y desconcertado a la policía. Jigsaw, una vez más, ha conseguido escapar, esta vez con la ayuda de su nueva aprendiz, Amanda (Shawnee Smith). Mientras la policía local intenta localizarle, el Doctor Lynn Denlon (Bahar Soomekh) y Jeff (Angus Macfayden) no saben que están a punto de convertirse en los siguientes peones de este horrible juego.', 'terror', 107, '2006-10-27', 'assets/img/caratulas/peliculas/saw 3.jpg'),
(60, 'SAW 4', 'Jigsaw y su aprendiz Amanda están muertos. Ahora, luego de hacerse público el asesinato de la detective Kerry, dos agentes del FBI, el Agente Strahn y el Agente Pérez, llegan a la aterrorizada comunidad para ayudar al veterano detective Hoffman a examinar minuciosamente los restos grisáceos que quedaron de Jigsaw, y así resolver el rompecabezas. Sin embargo, cuando el Comandante Rigg, perteneciente a la brigada especial SWAT, es secuestrado y empujado dentro del juego, contará con tan solo noventa minutos para triunfar en una serie de trampas dementes y salvar a un viejo amigo o enfrentar las consecuencias mortales...', 'terror', 108, '2007-10-26', 'assets/img/caratulas/peliculas/saw 4.jpg'),
(61, 'SAW 5', 'Hoffman (Costas Mandylor) es la última persona viva para heredar el legado de Jigsaw (Tobin Bell). Pero cuando su secreto se ve amenazado, Hoffman debe iniciar la caza para eliminar todos los cabos sueltos. Nueva entrega de la saga dirigida por el diseñador de producción de las tres anteriores.', 'terror', 92, '2008-11-14', 'assets/img/caratulas/peliculas/saw 5.jpg'),
(62, 'SAW 6', 'El Agente Especial Strahm está muerto, y el Detective Hoffman es el sucesor de Jigsaw y su juego macabro. Sin embargo, cuando la Brigada de Investigación Criminal comienza a estrechar el cerco a Hoffman, lo forzarán a poner en marcha el juego complejo de Jigsaw, y por fin a entenderlo por completo... Sexta entrega de la sangrienta saga Saw.En octubre de 2009 la distribuidora decidió cancelar su estreno en España a causa de la controvertida clasificación X que recibió del Ministerio de Cultura. Finalmente, la película llega a las salas españolas en octubre de 2010, con un montaje específico de los productores, que han eliminado 3 minutos de metraje, suprimiendo las escenas más violentas de la cinta.', 'terror', 90, '2009-10-23', 'assets/img/caratulas/peliculas/saw 6.jpg'),
(63, 'SAW 7', 'Mientras una mortal batalla explota sobre el brutal legado de Jigsaw, un grupo de supervivientes busca el apoyo del gurú de la autoayuda Bobby Dagen, un hombre que con sus oscuros secretos provocará una nueva ola de terror.', 'terror', 90, '2010-10-29', 'assets/img/caratulas/peliculas/saw 7.jpg'),
(64, 'SAW 8', 'Están apareciendo cuerpos en la ciudad, cada uno con signos de un espantoso final. Conforme avanza la investigación, la evidencia apunta a un sospechoso: John Kramer, el hombre conocido como Jigsaw, quien ha estado muerto por diez años.', 'terror', 91, '2017-10-26', 'assets/img/caratulas/peliculas/saw 8.jpg'),
(65, '3 Metros Sobre el Cielo', 'En Barcelona, dos jóvenes que pertenecen a mundos opuestos se conocen. Ella, la dulce Babi (María Valverde), es una chica de clase alta que vive en un entorno tan protegido como poco excitante. Él, Hugo (Mario Casas), conocido como el duro \"H\", es un chico impulsivo e irresponsable, aficionado a las peleas y a las carreras ilegales de motos. Esta es la crónica de un amor inicialmente imposible que arrastrará a ambos a un frenético viaje iniciático a través del cual descubrirán el amor.', 'romantica', 118, '2010-12-03', 'assets/img/caratulas/peliculas/tres metros sobre el cielo.jpg'),
(66, 'Tengo Ganas de ti', 'Secuela de \"Tres metros sobre el cielo\". La sexy Gin (Clara Lago) es el nuevo amor de Hache (Mario Casas), pero éste no puede olvidar a su antigua novia, Babi (María Valverde). Hache ha vuelto a casa tras pasar una temporada en Londres, alejado del recuerdo imborrable de aquel primer amor. Para poder reconstruir su vida y olvidar el pasado, Gin parece perfecta, pues es una chica de espíritu descarado, efervescente y vital que le hace creer que es posible revivir aquella magia. Pero tarde o temprano tendrá que encontrarse de nuevo con Babi...', 'romantica', 130, '2012-06-22', 'assets/img/caratulas/peliculas/tengo ganas de ti.jpg'),
(67, 'Crepúsculo', 'La joven Bella Swan siempre fue una chica muy diferente ya en sus años de niña en Phoenix. Cuando su madre se volvió a casar, la mandó a vivir con su padre, a la pequeña y lluviosa ciudad de Forks, Washington, una población sin ningún aliciente para Bella. Pero entonces conoce en el instituo al misterioso y atractivo Edward Cullen, un joven distinto a los demás que esconde un secreto...', 'romantica', 125, '2008-12-05', 'assets/img/caratulas/peliculas/crepusculo.jpg'),
(68, 'Crepúsculo - Luna Nueva', 'Edward Cullen decide abandonar a Bella Swan para mantenerla alejada de los peligros del mundo vampírico. Con la ayuda de Jacob Black, su amigo de la infancia y miembro de la misteriosa tribu quileute, Bella intentará superar el abandono de Edward, que la ha dejado sumida en el mayor de los desconsuelos. Pero los peligros siguen acechando a la joven; nuevas y asombrosas criaturas sobrenaturales se cruzarán en su camino, y Bella sólo contará con el apoyo del cada vez más cercano e irresistible Jacob. Repentinamente, Bella se encuentra inmersa en el mundo de los hombres lobo, ancestrales enemigos de los vampiros, y su lealtad es puesta a prueba...', 'romantica', 131, '2009-11-18', 'assets/img/caratulas/peliculas/crepusculo luna nueva.jpg'),
(69, 'Crepúsculo - Eclipse', 'En esta tercera entrega de la exitosa saga de vampiros de las novelas de Stephenie Meyer, Bella tendrá que elegir entre Edward y Jacob. La ciudad de Seattle es devastada por una serie de misteriosos asesinatos que va en aumento, mientras una vampiresa busca venganza. Bella debe escoger entre su amor por Edward y su amistad con Jacob, consciente de que su decisión puede iniciar una batalla entre vampiros y licántropos. Rodeada de peligro y con su graduación acercándose, ahora se enfrenta a la decisión más importante de su vida.', 'romantica', 131, '2010-06-30', 'assets/img/caratulas/peliculas/crepusculo eclipse.jpg'),
(70, 'Rambo - Acorralado', 'John Rambo, antiguo boina verde, va a visitar a un antiguo compañero de armas y recibe la noticia de que éste ha muerto como consecuencia de los efectos de la guerra. A pocos días, la policía detiene a Rambo por vagabundo y se ensaña con él. Entonces recuerda las torturas que sufrió en Vietnan y reacciona violentamente.', 'accion', 93, '1982-12-17', 'assets/img/caratulas/peliculas/rambo acorralado.jpg'),
(71, 'Rambo II', 'Rambo es excarcelado y enviado de vuelta al Vietnam con una nueva misión: averiguar el paradero de unos soldados norteamericanos desaparecidos. Tras saltar en paracaídas en la jungla, portando únicamente un cuchillo y un arco con flechas, se le dice que no ataque al enemigo y que sólo haga fotografías de reconocimiento. Pero el plan no saldrá como estaba previsto.', 'accion', 96, '1985-05-22', 'assets/img/caratulas/peliculas/rambo 2.jpg'),
(72, 'Rambo III', 'Cuando descubre que el coronel Trautman ha caído en manos soviéticas en Afganistán, Rambo regresa al servicio para intentar liberar a su amigo. Después de contactar a la resistencia afgana, entra en la zona sitiada por las tropas enemigas…', 'accion', 102, '1988-05-25', 'assets/img/caratulas/peliculas/rambo 3.jpg'),
(73, 'Rambo - Vuelta al Infierno', 'John Rambo, el ex-boina verde con una ajetreada vida marcada por la guerra, vive ahora una solitaria y apacible existencia en la jungla del norte de Tailandia, pescando y cazando cobras para luego venderlas. Todo cambia cuando un grupo de misioneros católicos necesita que les guíe hasta la frontera con Birmania para suministrar medicinas y alimentos a unos refugiados asediados por el ejército birmano, que ha hecho de las torturas y los asesinatos algo habitual. Rambo no tendrá más remedio que volver a involucrarse. Se verá obligado a hacer lo que mejor sabe, porque a pesar suyo lleva la guerra en la sangre.', 'accion', 99, '2008-01-28', 'assets/img/caratulas/peliculas/rambo vuelta al infierno.jpg'),
(74, 'Los Mercenarios', 'Un grupo de mercenarios es contratado para infiltrarse en un país sudamericano y derrocar a su despiadado y corrupto dictador. Una vez allí, se verán atrapados en una telaraña de engaño y traición. Una vez fracasada la misión, tendrán que enfrentarse a un reto aún más difícil; salvar la unidad del grupo y la amistad que los ha unido durante largos años.', 'accion', 130, '2010-08-13', 'assets/img/caratulas/peliculas/los mercenarios.jpg'),
(75, 'Los Mercenarios 2', 'Barney Ross, Lee Christmas, Yin Yang, Gunner Jensen, Toll Road, Hale Caesar y Billy, un nuevo colega, se vuelven a reunir cuando el señor Church les encarga un trabajo aparentemente sencillo y muy lucrativo. Sin embargo, el plan se tuerce cuando un peligroso terrorista llamado Villain les tiende una emboscada. Entonces su único deseo será vengarse. Así es como van sembrando a su paso la destrucción y el caos entre sus enemigos hasta que se encuentran con una amenaza inesperada: cinco toneladas de plutonio apto para uso militar, una cantidad más que suficiente para cambiar el equilibrio de poder en el mundo.', 'accion', 103, '2012-08-08', 'assets/img/caratulas/peliculas/los mercenarios 2.jpg'),
(76, 'Los Mercenarios 3', 'El grupo de los mercenarios, dirigidos por Barney, durante una misión en África, se encuentran frente a frente con Stonebanks, el otro miembro fundador del grupo, al que Barney creía muerto. Stonebanks es ahora un rico y despiadado traficante de armas que el gobierno de los EEUU quiere capturar con vida para llevarlo al tribunal internacional de la Haya.', 'accion', 131, '2014-08-15', 'assets/img/caratulas/peliculas/los mercenarios 3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculacomentario`
--

CREATE TABLE `peliculacomentario` (
  `id` int(11) UNSIGNED NOT NULL,
  `comentario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `pelicula_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculacomentario`
--

INSERT INTO `peliculacomentario` (`id`, `comentario`, `usuario_id`, `pelicula_id`) VALUES
(1, 'No es que suban muy alto la verdad', 10, 65),
(2, 'Mucha acción, mola mucho!', 10, 73),
(3, 'Un gran clásico', 10, 71),
(4, 'Las segundas partes no suelen ser muy buenas, pero esta....tampoco', 10, 75),
(5, 'La peli está mejor', 10, 7),
(6, 'hola', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculaestado`
--

CREATE TABLE `peliculaestado` (
  `id` int(11) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `pelicula_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculaestado`
--

INSERT INTO `peliculaestado` (`id`, `estado`, `usuario_id`, `pelicula_id`) VALUES
(1, 'seguir', 10, 1),
(2, 'pendiente', 10, 2),
(3, 'seguir', 10, 3),
(4, 'abandonada', 10, 4),
(5, 'seguir', 10, 9),
(6, 'seguir', 10, 11),
(7, 'pendiente', 10, 12),
(8, 'abandonada', 10, 14),
(9, 'terminada', 10, 15),
(10, 'abandonada', 10, 25),
(11, 'terminada', 10, 22),
(12, 'seguir', 10, 27),
(13, 'terminada', 10, 24),
(14, 'pendiente', 10, 23),
(15, 'terminada', 10, 33),
(16, 'pendiente', 10, 32),
(17, 'terminada', 10, 37),
(18, 'terminada', 10, 39),
(19, 'pendiente', 10, 41),
(20, 'terminada', 10, 42),
(21, 'terminada', 10, 44),
(22, 'abandonada', 10, 47),
(23, 'terminada', 10, 53),
(24, 'seguir', 10, 10),
(25, 'terminada', 10, 51),
(26, 'pendiente', 10, 49),
(27, 'pendiente', 10, 52),
(28, 'terminada', 10, 55),
(29, 'terminada', 10, 56),
(30, 'seguir', 10, 54),
(31, 'abandonada', 10, 43),
(32, 'seguir', 10, 57),
(33, 'seguir', 10, 60),
(34, 'pendiente', 10, 68),
(35, 'seguir', 10, 65),
(36, 'seguir', 10, 73),
(37, 'seguir', 10, 71),
(38, 'terminada', 10, 75),
(39, 'abandonada', 10, 7),
(40, 'terminada', 12, 1),
(41, 'terminada', 12, 2),
(42, 'seguir', 12, 10),
(43, 'pendiente', 12, 11),
(44, 'pendiente', 12, 14),
(45, 'pendiente', 12, 17),
(46, 'abandonada', 12, 21),
(47, 'seguir', 12, 13),
(48, 'seguir', 12, 25),
(49, 'terminada', 12, 15),
(50, 'terminada', 12, 22),
(51, 'seguir', 12, 30),
(52, 'abandonada', 12, 26),
(53, 'seguir', 12, 24),
(54, 'pendiente', 12, 28),
(55, 'terminada', 12, 33),
(56, 'pendiente', 12, 39),
(57, 'terminada', 12, 37),
(58, 'abandonada', 12, 36),
(59, 'seguir', 12, 41),
(60, 'abandonada', 12, 42),
(61, 'terminada', 12, 53),
(62, 'abandonada', 12, 47),
(63, 'terminada', 12, 51),
(64, 'terminada', 12, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculafavorito`
--

CREATE TABLE `peliculafavorito` (
  `id` int(11) UNSIGNED NOT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `pelicula_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculafavorito`
--

INSERT INTO `peliculafavorito` (`id`, `usuario_id`, `pelicula_id`) VALUES
(1, 10, 1),
(2, 10, 2),
(3, 10, 9),
(4, 10, 12),
(5, 10, 15),
(6, 10, 24),
(7, 10, 33),
(8, 10, 37),
(9, 10, 41),
(10, 10, 42),
(11, 10, 53),
(12, 10, 51),
(13, 10, 55),
(14, 10, 56),
(15, 10, 57),
(16, 10, 60),
(17, 12, 1),
(18, 12, 2),
(19, 12, 10),
(20, 12, 14),
(21, 12, 25),
(22, 12, 30),
(23, 12, 26),
(24, 12, 37),
(25, 12, 41),
(26, 12, 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculavaloracion`
--

CREATE TABLE `peliculavaloracion` (
  `id` int(11) UNSIGNED NOT NULL,
  `valor` int(11) UNSIGNED DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `pelicula_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `peliculavaloracion`
--

INSERT INTO `peliculavaloracion` (`id`, `valor`, `usuario_id`, `pelicula_id`) VALUES
(1, 4, 10, 1),
(2, 5, 10, 2),
(3, 5, 10, 3),
(4, 3, 10, 4),
(5, 5, 10, 9),
(6, 3, 10, 11),
(7, 4, 10, 12),
(8, 2, 10, 14),
(9, 5, 10, 15),
(10, 3, 10, 25),
(11, 4, 10, 22),
(12, 3, 10, 27),
(13, 5, 10, 24),
(14, 3, 10, 23),
(15, 5, 10, 33),
(16, 3, 10, 32),
(17, 5, 10, 37),
(18, 3, 10, 39),
(19, 5, 10, 41),
(20, 5, 10, 42),
(21, 4, 10, 44),
(22, 3, 10, 47),
(23, 5, 10, 53),
(24, 4, 10, 10),
(25, 5, 10, 51),
(26, 4, 10, 49),
(27, 5, 10, 55),
(28, 5, 10, 56),
(29, 4, 10, 54),
(30, 3, 10, 43),
(31, 5, 10, 57),
(32, 4, 10, 60),
(33, 2, 10, 68),
(34, 2, 10, 65),
(35, 4, 10, 73),
(36, 4, 10, 71),
(37, 2, 10, 75),
(38, 4, 10, 7),
(39, 3, 12, 1),
(40, 4, 12, 2),
(41, 4, 12, 10),
(42, 5, 12, 11),
(43, 4, 12, 14),
(44, 5, 12, 17),
(45, 3, 12, 21),
(46, 4, 12, 13),
(47, 5, 12, 25),
(48, 4, 12, 15),
(49, 4, 12, 22),
(50, 5, 12, 30),
(51, 5, 12, 26),
(52, 4, 12, 24),
(53, 4, 12, 28),
(54, 4, 12, 33),
(55, 4, 12, 39),
(56, 4, 12, 37),
(57, 5, 12, 36),
(58, 5, 12, 41),
(59, 4, 12, 42),
(60, 4, 12, 53),
(61, 5, 12, 47),
(62, 4, 12, 51),
(63, 5, 12, 56);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(3000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` int(11) UNSIGNED DEFAULT NULL,
  `fecha` int(11) UNSIGNED DEFAULT NULL,
  `temporadas` int(11) UNSIGNED DEFAULT NULL,
  `capitulos` int(11) UNSIGNED DEFAULT NULL,
  `ruta_caratula` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `serie`
--

INSERT INTO `serie` (`id`, `nombre`, `descripcion`, `genero`, `duracion`, `fecha`, `temporadas`, `capitulos`, `ruta_caratula`) VALUES
(1, 'Breaking Bad', 'A Walter White, un profesor de química de secundaria que lucha, se le diagnostica cáncer de pulmón avanzado. Recurre a una vida delictiva, produciendo y vendiendo metanfetamina acompañada por un ex alumno, Jesse Pinkman, con el objetivo de asegurar el futuro financiero de su familia antes de que muera.', 'drama', 45, 2008, 5, 10, 'assets/img/caratulas/series/breaking bad.jpg'),
(2, 'Sense8', 'Una apasionante historia de ocho personas de diferentes partes del mundo cuyas vidas acaban conectadas inexplicablemente en una lucha por su propia supervivencia.Un disparo, una muerte, un momento en el tiempo que enlaza irrevocablemente estas ocho mentes, conectando las vidas de cada uno, sus secretos y poniéndolos en un terrible peligro. Personas comunes cuyos destinos dan un gran vuelco sin que puedan hacer nada por evitarlo.', 'misterio', 60, 2015, 5, 12, 'assets/img/caratulas/series/sense8.jpg'),
(3, 'Altered Carbon', 'Altered Carbon se desarrolla en medio del siglo XXV, una época en la que las personas ya no mueren, técnicamente, sino que sus mentes y consciencias son transferidas de un cuerpo a otro... Adaptación de la novela de Richard Morgan que se centra en la historia de Takeshi Kovacs, un detective que se ve envuelto en una enorme conspiración, 500 años en el futuro, en medio de un mundo cyberpunk.', 'accion', 55, 2018, 1, 10, 'assets/img/caratulas/series/altered carbon.jpg'),
(4, 'The Big Bang Theory', 'Leonard (Johnny Galecki) y Sheldon (Jim Parsons) son dos cerebros privilegiados que comparten piso. Aunque los dos, doctores en Física, son capaces de calcular las probabilidades de existencia de otros mundos, no saben cómo relacionarse con los demás, especialmente con las chicas. Penny (Kaley Cuoco), una vecina recién llegada, es el polo opuesto a los dos amigos, de modo que su llegada altera la tranquila vida sentimental de Leonard y el desorden obsesivo-compulsivo de Sheldon.', 'comedia', 25, 2007, 12, 20, 'assets/img/caratulas/series/big bang theory.jpg'),
(5, 'Black Mirror', 'Esta serie de ciencia ficción explora un futuro próximo muy inquietante, donde las grandes innovaciones tecnológicas de la raza humana chocan con sus peores instintos.', 'thriller', 60, 2011, 5, 8, 'assets/img/caratulas/series/black mirror.jpg'),
(6, 'Chernobyl', 'Narra la historia del accidente nuclear de 1986, una de las peores catástrofes de la historia provocadas por el hombre. Además, también pone el foco en los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable mientras luchaban contra la cultura de la desinformación.', 'drama', 60, 2019, 1, 12, 'assets/img/caratulas/series/chernobyl.jpg'),
(7, 'Como Conocí a Vuestra Madre', 'Ted (Josh Radnor) les cuenta a sus dos hijos cómo conoció a su madre y cómo fue su vida hasta que, por fin, encontró el amor verdadero. Contó para ello con la ayuda de su amigo Barney (Neil Patrick Harris), un joven algo extravagante, adicto a los somníferos y muy hábil para conocer mujeres. Cuando Ted conoce a Robin (Cobie Smulders), una impresionante joven canadiense que acaba de mudarse a Nueva York, está completamente seguro de que es amor a primera vista.', 'comedia', 25, 2005, 9, 22, 'assets/img/caratulas/series/como conoci a vuestra madre.jpg'),
(8, 'El Barco', 'El viaje de estudios a bordo del buque-escuela \"Estrella Polar\" promete nuevas y excitantes experiencias para sus cuarenta jóvenes alumnos. Pero una tormenta les desorienta dejándolos perdidos en el mar. Pronto se darán cuenta de que la tierra ha desaparecido sin dejar rastro. La tripulación tendrá que resolver uno de los enigmas más extraños de su vida.', 'drama', 80, 2011, 3, 13, 'assets/img/caratulas/series/el barco.jpg'),
(9, 'El Internado', 'Tras la presunta muerte de sus padres en un naufragio, una pareja de hermanos llega al elitista internado Laguna Negra. ... También descubrirá que el internado es un lugar oscuro, donde el peligro se esconde en cada esquina y nadie es lo que parece.', 'suspense', 70, 2006, 7, 10, 'assets/img/caratulas/series/el internado.jpg'),
(10, 'Física o Química', 'Narra los problemas de cuatro profesores que acceden a su primer trabajo en un instituto de Enseñanza Secundaria donde descubrirán todo un universo de conflictos, amores, desamores e ilusiones de un grupo de adolescentes para los que han de servir de guía. En el primer episodio, a comienzo de septiembre una joven de 26 años conoce a un chico a la salida de una discoteca. Él es bastante joven, 19 años, dice, pero, a pesar de la diferencia de edad, pronto surge una atracción y acaban acostándose. A los dos días, la joven empieza en su nuevo trabajo como profesora y allí descubre que el chico con el que se acostó es uno de sus alumnos... y que es menor de edad.', 'drama', 75, 2008, 7, 10, 'assets/img/caratulas/series/fisica o quimica.jpg'),
(11, 'La Casa de Papel', 'Un golpe maestro ideado y perfeccionado durante años, planificado durante meses y ejecutado en pocos minutos para que el elegido grupo de ladrones que se adentra en la Fábrica Nacional de Moneda y Timbre a punta de pistola haga creer a la Policía que su plan ha fallado… y que los tienen asediados dentro del edificio sin otra salida que su rendición.Once días de encierro con los 67 rehenes (entre empleados de la FNMT y alumnos de un colegio que se encontraban de visita) y un operativo policial sin precedentes que mantendrá en jaque a todo el Gobierno. Un atraco de minuciosa planificación, cuyos ejecutores necesitan un mínimo de días para poder llevarlo a cabo. Por esta razón es por lo que en el propio transcurso del tiempo está la clave de su éxito. ¿Quién puede estar detrás de esta descabellada idea?', 'thriller', 70, 2017, 3, 15, 'assets/img/caratulas/series/la casa de papel.jpg'),
(12, 'Mr. Robot', 'Elliot Anderson es un joven y brillante programador con problemas para las relaciones sociales que durante el día trabaja como técnico de ciberseguridad de una importante empresa informática y por la noche es un desinteresado justiciero cibernético, que se verá envuelto en una oscura trama.', 'thriller', 70, 2015, 4, 12, 'assets/img/caratulas/series/mr robot.jpg'),
(13, 'Orange is the new Black', 'Una pudiente neoyorkina acaba en una cárcel para mujeres cuando las consecuencias de un antiguo delito le pasan factura.', 'comedia', 60, 2013, 7, 13, 'assets/img/caratulas/series/orange is the new black.jpg'),
(14, 'Pequeñas Mentirosas', 'En la idílica población de Rosewood, cuatro amigas -Aria, Spencer, Hanna y Emily- se reúnen un año después de que la “líder” del grupo, Alison (Sasha Pieterse), haya desaparecido misteriosamente. Las cuatro tienen además algo en común y es que están recibiendo mensajes de un anónimo que conoce los secretos que sabía Alison. Todo comienza cuando el cuerpo de la joven aparece, pero el anónimo sigue enviando mensajes a las protagonistas.', 'misterio', 45, 2010, 7, 22, 'assets/img/caratulas/series/pequeñas mentirosas.jpg'),
(15, 'Por trece Razones', 'El adolescente Clay Jensen (Dylan Minnette) vuelve un día a casa después del colegio y encuentra una misteriosa caja con su nombre. Dentro descubre una cinta grabada por Hannah Baker (Katherine Langford), una compañera de clase por la que sentía algo especial y que se suicidó tan solo dos semanas atrás. En la cinta, Hannah cuenta que hay trece razones por las que ha decidido quitarse la vida. ¿Será Clay una de ellas? Si lo escucha, tendrá oportunidad de conocer cada motivo de su lista.', 'drama', 60, 2017, 2, 13, 'assets/img/caratulas/series/por trece razones.jpg'),
(16, 'Stranger Things', 'Stranger Things es una serie de televisión dramática de misterio que está ambientada en una localidad de Indiana. La historia narra la súbita desaparición de un niño en esta ciudad durante la década de los 80, hecho que destapa los extraños sucesos que tienen lugar en la zona, producto de una serie de experimentos que realiza el gobierno. Además, en la ciudad aparecen fuerzas sobrenaturales inquietantes y una niña muy perturbadora.', 'fantasia', 50, 2016, 4, 10, 'assets/img/caratulas/series/stranger things.jpg'),
(17, 'The Rain', 'Seis años después de que un virus aniquila a casi toda la población de Escandinavia, dos hermanos se unen a un grupo de sobrevivientes que buscan seguridad y respuestas.', 'cienciaficcion', 50, 2018, 2, 8, 'assets/img/caratulas/series/the rain.jpg'),
(18, 'The Walking Dead', 'La historia nos traslada a un escenario post-pandémico en el que un virus ha acabado con la práctica totalidad de la población mundial convirtiéndolos en zombis. Seremos testigo de la lucha de un grupo de supervivientes por mantenerse a salvo en este entorno infestado de zombis o, como ellos prefieren llamarlos, caminantes.', 'aventura', 45, 2010, 9, 16, 'assets/img/caratulas/series/the walking dead.jpg'),
(19, 'Vikings', 'En ella, Travis Fimmel (\"Country Outlaw\", \"Despertar\") interpreta a Ragnar Lothbrok, cuyo mayor sueño es explorar nuevas civilizaciones surcando los mares. Gracias a la ayuda de su amigo bufón Floki, al que da vida Gustaf Skarsgård (\"Autumn Blood\", \"Kon-Tik\"), construyen nuevos navíos más rápidos y elegantes con los que poder dar forma a su mayor ilusión. En su aventura chocan con Earl Haraldson, Gabriel Byrne (\"En terapia\", \"Asalto al distrito 13\"), su principal enemigo, que sospecha de las expectativas de Lothbrok. La lucha entre ambos no se hace esperar.', 'accion', 45, 2013, 5, 10, 'assets/img/caratulas/series/vikings.jpg'),
(20, 'Vis a Vis', 'VIS A VIS” narra la historia de una joven, Macarena, recluida en una cárcel de mujeres. Ella se muestra aterrorizada ante su inminente ingreso en prisión, antes de que tenga lugar su juicio. El shock que sucede a su llegada al centro es enorme: un duro ambiente, así como relaciones interpersonales llenas de hostilidad. Además, estará rodeada de compañías poco amistosas: la reclusa más conflictiva de la prisión, una gobernanta poco fiable, un doctor amenazante,… Sin embargo, encontrará apoyo en sus compañeras de celda, así como en un antiguo policía que ahora trabaja allí. Macarena estará, por otro lado, decidida a perseguir un objetivo claro: demostrar su inocencia.', 'drama', 65, 2015, 4, 10, 'assets/img/caratulas/series/vis a vis.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seriecomentario`
--

CREATE TABLE `seriecomentario` (
  `id` int(11) UNSIGNED NOT NULL,
  `comentario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `serie_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seriecomentario`
--

INSERT INTO `seriecomentario` (`id`, `comentario`, `usuario_id`, `serie_id`) VALUES
(1, 'Una gran serie', 10, 1),
(2, 'Decepcionado con esta serie...no aparecen robots :(', 10, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serieestado`
--

CREATE TABLE `serieestado` (
  `id` int(11) UNSIGNED NOT NULL,
  `estado` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `serie_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `serieestado`
--

INSERT INTO `serieestado` (`id`, `estado`, `usuario_id`, `serie_id`) VALUES
(1, 'seguir', 10, 1),
(2, 'terminada', 10, 4),
(3, 'pendiente', 10, 5),
(4, 'pendiente', 10, 12),
(5, 'pendiente', 10, 15),
(6, 'abandonada', 10, 17),
(7, 'pendiente', 10, 11),
(8, 'abandonada', 10, 10),
(9, 'pendiente', 10, 9),
(10, 'abandonada', 10, 6),
(11, 'pendiente', 10, 14),
(12, 'pendiente', 12, 1),
(13, 'terminada', 12, 4),
(14, 'pendiente', 12, 15),
(15, 'pendiente', 12, 16),
(16, 'abandonada', 12, 18),
(17, 'pendiente', 12, 11),
(18, 'terminada', 12, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seriefavorito`
--

CREATE TABLE `seriefavorito` (
  `id` int(11) UNSIGNED NOT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `serie_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seriefavorito`
--

INSERT INTO `seriefavorito` (`id`, `usuario_id`, `serie_id`) VALUES
(1, 10, 1),
(2, 10, 4),
(3, 10, 11),
(4, 10, 10),
(5, 10, 6),
(6, 12, 1),
(7, 12, 4),
(8, 12, 15),
(9, 12, 16),
(10, 12, 18),
(11, 12, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serievaloracion`
--

CREATE TABLE `serievaloracion` (
  `id` int(11) UNSIGNED NOT NULL,
  `valor` int(11) UNSIGNED DEFAULT NULL,
  `usuario_id` int(11) UNSIGNED DEFAULT NULL,
  `serie_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `serievaloracion`
--

INSERT INTO `serievaloracion` (`id`, `valor`, `usuario_id`, `serie_id`) VALUES
(1, 4, 10, 1),
(2, 5, 10, 4),
(3, 4, 10, 5),
(4, 2, 10, 12),
(5, 5, 10, 15),
(6, 3, 10, 17),
(7, 5, 10, 11),
(8, 5, 10, 10),
(9, 5, 10, 9),
(10, 4, 10, 6),
(11, 4, 10, 14),
(12, 5, 12, 1),
(13, 4, 12, 4),
(14, 4, 12, 15),
(15, 5, 12, 16),
(16, 5, 12, 18),
(17, 4, 12, 11),
(18, 4, 12, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) UNSIGNED NOT NULL,
  `correo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_usuario` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clave` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `correo`, `nombre_usuario`, `clave`, `nombre`, `apellidos`, `descripcion`, `fecha_nacimiento`, `rol`) VALUES
(2, 'admin@gmail.com', 'admin', 'qwertyuiop', 'admin', NULL, NULL, NULL, 'administrador'),
(6, 'mois@gmail.com', 'mois', 'moismois0', 'mois', 'mois2', 'aaaa', '2019-06-21', 'administrador'),
(7, 'testP@gmail.com', 'testP', 'qwertyuiop', 'testerDesdePremium', NULL, NULL, NULL, 'premium'),
(8, 'jlopezgonzalez@hotmail.es', 'basicImg', 'qwertyuiop', 'sad', 'dsa', NULL, '2019-06-12', 'administrador'),
(9, 'testN@gmail.com', 'testN', 'qwertyuiop', NULL, NULL, NULL, NULL, 'basico'),
(10, 'basico@gmail.com', 'basico', 'qwertyuiop', 'Nombre básico', 'Apellidos básicos', 'Descripción básica', '2019-06-04', 'basico'),
(11, 'basico@gmail.com', 'basico2', 'basico22pass', 'basico', 'basico', 'ASDASD', '2019-06-12', 'premium'),
(12, 'premium@correo.es', 'premium', 'qwertyuiop', 'premium nombre', 'premium apellidos', 'descripción del usuario premium', '2019-06-02', 'premium');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_libro_usuario` (`usuario_id`);

--
-- Indices de la tabla `librocomentario`
--
ALTER TABLE `librocomentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_librocomentario_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_librocomentario_libro` (`libro_id`);

--
-- Indices de la tabla `libroestado`
--
ALTER TABLE `libroestado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_libroestado_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_libroestado_libro` (`libro_id`);

--
-- Indices de la tabla `librofavorito`
--
ALTER TABLE `librofavorito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_librofavorito_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_librofavorito_libro` (`libro_id`);

--
-- Indices de la tabla `librovaloracion`
--
ALTER TABLE `librovaloracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_librovaloracion_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_librovaloracion_libro` (`libro_id`);

--
-- Indices de la tabla `musica`
--
ALTER TABLE `musica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_musica_usuario` (`usuario_id`);

--
-- Indices de la tabla `musicacomentario`
--
ALTER TABLE `musicacomentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_musicacomentario_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_musicacomentario_musica` (`musica_id`);

--
-- Indices de la tabla `musicaestado`
--
ALTER TABLE `musicaestado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_musicaestado_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_musicaestado_musica` (`musica_id`);

--
-- Indices de la tabla `musicafavorito`
--
ALTER TABLE `musicafavorito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_musicafavorito_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_musicafavorito_musica` (`musica_id`);

--
-- Indices de la tabla `musicavaloracion`
--
ALTER TABLE `musicavaloracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_musicavaloracion_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_musicavaloracion_musica` (`musica_id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculacomentario`
--
ALTER TABLE `peliculacomentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_peliculacomentario_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_peliculacomentario_pelicula` (`pelicula_id`);

--
-- Indices de la tabla `peliculaestado`
--
ALTER TABLE `peliculaestado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_peliculaestado_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_peliculaestado_pelicula` (`pelicula_id`);

--
-- Indices de la tabla `peliculafavorito`
--
ALTER TABLE `peliculafavorito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_peliculafavorito_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_peliculafavorito_pelicula` (`pelicula_id`);

--
-- Indices de la tabla `peliculavaloracion`
--
ALTER TABLE `peliculavaloracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_peliculavaloracion_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_peliculavaloracion_pelicula` (`pelicula_id`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seriecomentario`
--
ALTER TABLE `seriecomentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_seriecomentario_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_seriecomentario_serie` (`serie_id`);

--
-- Indices de la tabla `serieestado`
--
ALTER TABLE `serieestado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_serieestado_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_serieestado_serie` (`serie_id`);

--
-- Indices de la tabla `seriefavorito`
--
ALTER TABLE `seriefavorito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_seriefavorito_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_seriefavorito_serie` (`serie_id`);

--
-- Indices de la tabla `serievaloracion`
--
ALTER TABLE `serievaloracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_serievaloracion_usuario` (`usuario_id`),
  ADD KEY `index_foreignkey_serievaloracion_serie` (`serie_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `librocomentario`
--
ALTER TABLE `librocomentario`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `libroestado`
--
ALTER TABLE `libroestado`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `librofavorito`
--
ALTER TABLE `librofavorito`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `librovaloracion`
--
ALTER TABLE `librovaloracion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `musica`
--
ALTER TABLE `musica`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `musicacomentario`
--
ALTER TABLE `musicacomentario`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `musicaestado`
--
ALTER TABLE `musicaestado`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `musicafavorito`
--
ALTER TABLE `musicafavorito`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `musicavaloracion`
--
ALTER TABLE `musicavaloracion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `peliculacomentario`
--
ALTER TABLE `peliculacomentario`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `peliculaestado`
--
ALTER TABLE `peliculaestado`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `peliculafavorito`
--
ALTER TABLE `peliculafavorito`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `peliculavaloracion`
--
ALTER TABLE `peliculavaloracion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `seriecomentario`
--
ALTER TABLE `seriecomentario`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `serieestado`
--
ALTER TABLE `serieestado`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `seriefavorito`
--
ALTER TABLE `seriefavorito`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `serievaloracion`
--
ALTER TABLE `serievaloracion`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `c_fk_libro_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `librocomentario`
--
ALTER TABLE `librocomentario`
  ADD CONSTRAINT `c_fk_librocomentario_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_librocomentario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `libroestado`
--
ALTER TABLE `libroestado`
  ADD CONSTRAINT `c_fk_libroestado_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_libroestado_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `librofavorito`
--
ALTER TABLE `librofavorito`
  ADD CONSTRAINT `c_fk_librofavorito_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_librofavorito_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `librovaloracion`
--
ALTER TABLE `librovaloracion`
  ADD CONSTRAINT `c_fk_librovaloracion_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `libro` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_librovaloracion_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `musica`
--
ALTER TABLE `musica`
  ADD CONSTRAINT `c_fk_musica_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `musicacomentario`
--
ALTER TABLE `musicacomentario`
  ADD CONSTRAINT `c_fk_musicacomentario_musica_id` FOREIGN KEY (`musica_id`) REFERENCES `musica` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_musicacomentario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `musicaestado`
--
ALTER TABLE `musicaestado`
  ADD CONSTRAINT `c_fk_musicaestado_musica_id` FOREIGN KEY (`musica_id`) REFERENCES `musica` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_musicaestado_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `musicafavorito`
--
ALTER TABLE `musicafavorito`
  ADD CONSTRAINT `c_fk_musicafavorito_musica_id` FOREIGN KEY (`musica_id`) REFERENCES `musica` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_musicafavorito_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `musicavaloracion`
--
ALTER TABLE `musicavaloracion`
  ADD CONSTRAINT `c_fk_musicavaloracion_musica_id` FOREIGN KEY (`musica_id`) REFERENCES `musica` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_musicavaloracion_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `peliculacomentario`
--
ALTER TABLE `peliculacomentario`
  ADD CONSTRAINT `c_fk_peliculacomentario_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_peliculacomentario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `peliculaestado`
--
ALTER TABLE `peliculaestado`
  ADD CONSTRAINT `c_fk_peliculaestado_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_peliculaestado_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `peliculafavorito`
--
ALTER TABLE `peliculafavorito`
  ADD CONSTRAINT `c_fk_peliculafavorito_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_peliculafavorito_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `peliculavaloracion`
--
ALTER TABLE `peliculavaloracion`
  ADD CONSTRAINT `c_fk_peliculavaloracion_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `pelicula` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_peliculavaloracion_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `seriecomentario`
--
ALTER TABLE `seriecomentario`
  ADD CONSTRAINT `c_fk_seriecomentario_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_seriecomentario_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `serieestado`
--
ALTER TABLE `serieestado`
  ADD CONSTRAINT `c_fk_serieestado_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_serieestado_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `seriefavorito`
--
ALTER TABLE `seriefavorito`
  ADD CONSTRAINT `c_fk_seriefavorito_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_seriefavorito_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `serievaloracion`
--
ALTER TABLE `serievaloracion`
  ADD CONSTRAINT `c_fk_serievaloracion_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `serie` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `c_fk_serievaloracion_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
