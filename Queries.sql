-- 1. Query -- Seleccionar cantidad de titulos en 1 idioma
select count(distinct a.title), b.name from film a
join language b on a.language_id=b.language_id
group by b.name;

-- 2. Query -- Cantidad de titulos por rating de manera ascendente.

select rating, avg(length) as avg_len, count(distinct title) as titles from film 
group by rating
order by titles, avg_len asc
;

-- 3. Query -- Buscar 1 actor en cuantas peliculas ha salido

select title from old_hdd where complete_name like 'JENNIFER DAVIS';

-- 4. Query -- 

