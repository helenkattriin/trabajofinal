SET FOREIGN_KEY_CHECKS = 0;

-- borrar tablas si existen
DROP TABLE IF EXISTS combate_objeto;
DROP TABLE IF EXISTS decision;
DROP TABLE IF EXISTS inventario_objeto;
DROP TABLE IF EXISTS inventario;
DROP TABLE IF EXISTS progresocapitulo;
DROP TABLE IF EXISTS partida;
DROP TABLE IF EXISTS personaje;
DROP TABLE IF EXISTS objeto;
DROP TABLE IF EXISTS capitulo;

-- tabla capitulo
CREATE TABLE capitulo (
  id_capitulo INT NOT NULL,
  titulo VARCHAR(50) DEFAULT NULL,
  descripcion VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (id_capitulo)
) ENGINE=InnoDB;

INSERT INTO capitulo (id_capitulo,titulo,descripcion) VALUES
(1,'laboratorio','llegas a un laboratorio abandonado en busca de will y encuentras una manga rota'),
(2,'decision','debes elegir si ir por la izquierda o seguir de frente'),
(3,'bosque izquierda','sales del lab, sigues el rastro, encuentras Dustin y una linterna y luego decidis separar o seguir juntos'),
(4,'separarse','te separas de tu amigo y avanzas sola entre los arboles'),
(5,'escuela','entras a la escuela a investigar y encuentras una nota de will con una llave'),
(6,'alcantarillas sola','entras sola por las alcantarillas, luchas contra el monstruo y llegas a una puerta de acero que se abre con un ahorcado'),
(7,'luchar en grupo','te unes a tus amigos para luchar contra el monstruo'),
(8,'puerta de acero','cruzas la puerta tras poner el codigo y encuentras al monstruo gigante y a will detras'),
(9,'luchar solo','decides enfrentarte solo al monstruo para salvar a will'),
(10,'luchar en grupo','decides luchar junto a tus amigos contra el monstruo'),
(11,'victoria en grupo','luchas junto a tus amigos contra el monstruo y salvan a will'),
(12,'defender','te abalanzas para distraer al monstruo y darle tiempo a will para huir'),
(13,'will escapa','logras distraer al monstruo y will consigue huir a salvo'),
(14,'huir','decides huir dejando atras a will y a tus amigos cargando con la culpa para siempre'),
(15,'alcantarillas en grupo','vais juntos por las alcantarillas en busca de will, sois emboscados por los monstruos y llegais a la puerta de acero'),
(16,'bosque recto','rodeas el bosque y caminas hasta llegar a una ciudad'),
(17,'ciudad','exploras la ciudad y te encuentras con dos personas'),
(18,'manga mostrada','les muestras el trozo de manga que encontraste antes para calmarlos'),
(19,'linterna de dustin','dustin te da una linterna'),
(20,'separarse en la escuela','ignoras a lucas y os separais'),
(21,'seguir juntos en la escuela','haces caso a lucas y permaneceis juntos'),
(22,'bosque izquierda en grupo','tras salir del bosque llegais al pueblo, encontrais a lucas, entrais a la escuela, hallais una nota con la linterna y al salir os iluminan los faros de una furgoneta y huís corriendo');

-- tabla objeto
CREATE TABLE objeto (
  id_objeto INT NOT NULL,
  nombre VARCHAR(50) DEFAULT NULL,
  descripcion VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id_objeto)
) ENGINE=InnoDB;

INSERT INTO objeto (id_objeto,nombre,descripcion) VALUES
(1,'mapa','muestra el camino'),
(2,'brujula','te ayuda a orientarte'),
(3,'manga rota','pista sobre will'),
(4,'linterna','sirve para ver en zonas oscuras'),
(5,'nota','nota de will con numeros 4 10 17 y la palabra stranger things'),
(6,'llave','llave encontrada junto a la nota'),
(7,'puerta de acero','puerta que se abre resolviendo el puzzle del ahorcado'),
(8,'mega puño','concentra toda su fuerza en su puño'),
(9,'mascara de hockey','aumento de defensa'),
(10,'bate','bate de acero potencia de ataque +20%'),
(11,'linterna combate','cegara al oponente unos segundos en combate');

-- tabla personaje
CREATE TABLE personaje (
  id_personaje INT NOT NULL,
  nombre VARCHAR(50) DEFAULT NULL,
  punto_fuerte VARCHAR(50) DEFAULT NULL,
  punto_debil VARCHAR(50) DEFAULT NULL,
  imagen VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (id_personaje)
) ENGINE=InnoDB;

INSERT INTO personaje (id_personaje,nombre,punto_fuerte,punto_debil,imagen) VALUES
(1,'hopper','fuerza mayor','lentitud','hopper.webp'),
(2,'nancy','rompe objetos','carga lenta','nancy.webp'),
(3,'mike','deslumbra','requiere cargar','mike.webp'),
(4,'max','aturde enemigos','acierto 30%','max.webp');

-- tabla partida
CREATE TABLE partida (
  id_partida INT NOT NULL,
  id_personaje INT DEFAULT NULL,
  PRIMARY KEY (id_partida),
  KEY idx_personaje (id_personaje),
  CONSTRAINT fk_partida_personaje FOREIGN KEY (id_personaje) REFERENCES personaje (id_personaje)
) ENGINE=InnoDB;

INSERT INTO partida (id_partida,id_personaje) VALUES
(1,1),(2,2),(3,3),(4,4);

-- tabla inventario
CREATE TABLE inventario (
  id_inventario INT NOT NULL,
  id_partida INT DEFAULT NULL,
  PRIMARY KEY (id_inventario),
  KEY idx_partida (id_partida),
  CONSTRAINT fk_inventario_partida FOREIGN KEY (id_partida) REFERENCES partida (id_partida)
) ENGINE=InnoDB;

INSERT INTO inventario (id_inventario,id_partida) VALUES
(1,1),(2,2),(3,3),(4,4);

-- tabla inventario_objeto
CREATE TABLE inventario_objeto (
  id_inventario INT NOT NULL,
  id_objeto INT NOT NULL,
  PRIMARY KEY (id_inventario,id_objeto),
  KEY idx_objeto (id_objeto),
  CONSTRAINT fk_invobj_inventario FOREIGN KEY (id_inventario) REFERENCES inventario (id_inventario),
  CONSTRAINT fk_invobj_objeto FOREIGN KEY (id_objeto) REFERENCES objeto (id_objeto)
) ENGINE=InnoDB;

INSERT INTO inventario_objeto (id_inventario,id_objeto) VALUES
(1,1),(2,1),(3,1),(4,1),
(1,2),(2,2),(3,2),(4,2),
(1,3),(2,3),(3,3),(4,3),
(1,4),(2,4),(3,4),(4,4),
(1,5),(2,5),(3,5),(4,5),
(1,6),(2,6),(3,6),(4,6),
(1,7),(2,7),(3,7),(4,7);

-- tabla decision
CREATE TABLE decision (
  id_capitulo_origen INT NOT NULL,
  id_capitulo_destino INT NOT NULL,
  PRIMARY KEY (id_capitulo_origen,id_capitulo_destino),
  KEY idx_capitulo_destino (id_capitulo_destino),
  CONSTRAINT fk_decision_origen FOREIGN KEY (id_capitulo_origen) REFERENCES capitulo (id_capitulo),
  CONSTRAINT fk_decision_destino FOREIGN KEY (id_capitulo_destino) REFERENCES capitulo (id_capitulo)
) ENGINE=InnoDB;

INSERT INTO decision (id_capitulo_origen,id_capitulo_destino) VALUES
(2,3),(20,5),(21,8),(7,11),(6,15),(2,16),(3,17),
(16,17),(17,18),(18,19),(19,20),(19,21),(3,22);

-- tabla combate_objeto
CREATE TABLE combate_objeto (
  id_capitulo INT NOT NULL,
  id_objeto INT NOT NULL,
  PRIMARY KEY (id_capitulo,id_objeto),
  KEY idx_objeto (id_objeto),
  CONSTRAINT fk_combate_capitulo FOREIGN KEY (id_capitulo) REFERENCES capitulo (id_capitulo),
  CONSTRAINT fk_combate_objeto FOREIGN KEY (id_objeto) REFERENCES objeto (id_objeto)
) ENGINE=InnoDB;

INSERT INTO combate_objeto (id_capitulo,id_objeto) VALUES
(9,8),(9,9),(9,10),(9,11);

-- tabla progresocapitulo
CREATE TABLE progresocapitulo (
  id_progreso INT NOT NULL,
  id_partida INT DEFAULT NULL,
  id_capitulo INT DEFAULT NULL,
  completado TINYINT(1) DEFAULT NULL,
  resultado VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (id_progreso),
  KEY idx_partida (id_partida),
  KEY idx_capitulo (id_capitulo),
  CONSTRAINT fk_prog_partida FOREIGN KEY (id_partida) REFERENCES partida (id_partida),
  CONSTRAINT fk_prog_capitulo FOREIGN KEY (id_capitulo) REFERENCES capitulo (id_capitulo)
) ENGINE=InnoDB;

INSERT INTO progresocapitulo (id_progreso,id_partida,id_capitulo,completado,resultado) VALUES
(1,1,1,1,NULL),
(2,2,1,1,NULL),
(3,3,1,1,NULL),
(4,4,1,1,NULL),
(17,1,4,1,NULL),
(18,2,4,1,NULL),
(19,3,4,1,NULL),
(20,4,4,1,NULL),
(21,1,5,1,NULL),
(22,2,5,1,NULL),
(23,3,5,1,NULL),
(24,4,5,1,NULL),
(25,1,6,1,NULL),
(26,2,6,1,NULL),
(27,3,6,1,NULL),
(28,4,6,1,NULL),
(100,1,6,1,'victoria'),
(101,2,7,1,'victoria'),
(102,3,6,1,'derrota');

SET FOREIGN_KEY_CHECKS = 1;
