/*1️.Ver que personaje juega cada partida*/

select p.id_partida, per.nombre
from partida p
join personaje per on p.id_personaje = per.id_personaje

/*2.Ver decisiones entre capitulos*/

select c1.titulo as origen, c2.titulo as destino
from decision d
join capitulo c1 on d.id_capitulo_origen = c1.id_capitulo
join capitulo c2 on d.id_capitulo_destino = c2.id_capitulo

/*3.Ver objetos de cada inventario*/

select i.id_inventario, o.nombre
from inventario_objeto io
join inventario i on io.id_inventario = i.id_inventario
join objeto o on io.id_objeto = o.id_objeto 

/*4.Ver objetos usados en combate*/

select c.id_capitulo, o.nombre
from combate_objeto co
join capitulo c on co.id_capitulo = c.id_capitulo
join objeto o on co.id_objeto = o.id_objeto


/*5.Ver todo acerca los personajes*/

select * from personaje


/*6.Ver todos los capitulos*/

select * from capitulo


/*7.Ver todos los objetos*/

select * from objeto


/*8.Contar cuantos objetos hay por inventario*/

select id_inventario, count(id_objeto) as total_objetos
from inventario_objeto
group by id_inventario

/*9.ver que objeto se usa en cada capitulo de combate*/ 

select co.id_capitulo, o.nombre
from combate_objeto co
join objeto o on co.id_objeto = o.id_objeto


/*10.Ver que capitulos tienen resultado victoria*/

select c.titulo, pc.resultado
from progresocapitulo pc
join capitulo c on pc.id_capitulo = c.id_capitulo
where pc.resultado = 'victoria'

/*11.Ver objetos de cada inventario*/ 
select c.titulo, d.id_capitulo_destino
from decision d
join capitulo c on d.id_capitulo_origen = c.id_capitulo



/*12.Cuantos objetos distintos hay en total*/
select count(distinct id_objeto) as total_objetos
from inventario_objeto;

/*13.Ver resultados del capitulo de lucha en grupo */
select pc.id_partida, c.titulo, pc.resultado
from progresocapitulo pc
join capitulo c on pc.id_capitulo = c.id_capitulo
where c.titulo like '%luchar%'; 


/*14.Contar cuantos capitulos hay*/

select count(*) as total_capitulos from capitulo


/*15.Muestra todos los inventarios creados en el juego*/

select * from inventario


/*16.Cuantos personajes hay en total*/ 

select count(*) as total_personajes
from personaje




