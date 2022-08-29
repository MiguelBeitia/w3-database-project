-- 1. Query -- Seleccionar cantidad de titulos en 1 idioma
select count(distinct a.title), b.name from film a
join language b on a.language_id=b.language_id
group by b.name;

-- 2. Query -- Cantidad de titulos por rating de manera ascendente.

select rating, avg(length) as avg_len, count(distinct title) as titles from film 
group by rating
order by titles, avg_len asc
;

-- 3. Query -- Buscar 1 actor o actriz en cuantas peliculas ha salido

select title from old_hdd where complete_name like 'JENNIFER DAVIS';



-- 4. Query -- Buscar toda las peliculas con X rating y x duración

select * from film where rating='G' and  rental_duration='6' ;


-- 5. Query -- Seleccioname cuales han sido las meliculas mejores valoradas de cierto actor o actriz

/*Create temporary table apps.pelicula 
select film.title as filmtitle, film.rental_rate as filmrate, old_hdd.title as oldtitle,
count(distinct(rental_rate)) as ratings,
count(title) as titulo, sum(rate) as rate
from apps.film old_hdd *\


